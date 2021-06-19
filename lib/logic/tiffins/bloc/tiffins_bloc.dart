import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:co_helper/data/exceptions/http_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/transformers.dart';

import 'package:co_helper/data/models/Tiffin.dart';
import 'package:co_helper/data/repositories/tiffins_repository/tiffins_repository_contract.dart';

part 'tiffins_bloc.freezed.dart';
part 'tiffins_event.dart';
part 'tiffins_state.dart';

class TiffinsBloc extends Bloc<TiffinsEvent, TiffinsState> {
  final TiffinsRepositoryContract repository;

  TiffinsBloc({
    required this.repository,
    required isPaginated,
  }) : super(TiffinsState.initial(isPaginated: isPaginated));

  @override
  void onTransition(Transition<TiffinsEvent, TiffinsState> transition) {
    print(transition);
    print('\n');
    super.onTransition(transition);
  }

  @override
  Stream<Transition<TiffinsEvent, TiffinsState>> transformEvents(
      Stream<TiffinsEvent> events, transitionFn) {
    final nonDebounceStream = events
        .where((event) => event is! TiffinLoadMore && event is! TiffinSearch);
    final debounceStream = events
        .where((event) => event is TiffinLoadMore || event is TiffinSearch)
        .debounceTime(Duration(milliseconds: 500));

    return super.transformEvents(
      MergeStream([nonDebounceStream, debounceStream]),
      transitionFn,
    );
  }

  @override
  Stream<TiffinsState> mapEventToState(
    TiffinsEvent event,
  ) async* {
    yield* event
        .when(
      filterSelected: _mapFilterSelectedEventToState,
      filter: _mapFilterEventToState,
      load: _mapLoadEventToState,
      loadMore: _mapLoadMoreEventToState,
      reload: _mapReloadEventToState,
      search: _mapSearchEventToState,
    )
        .onErrorReturnWith(
      (error, stackTrace) {
        print(stackTrace);
        if (error is HttpException) {
          return TiffinsState.error(
            message: error.toString(),
            status: error.status,
          );
        }
        // TODO: handle more exception

        return TiffinsState.error(
          message: error.toString(),
          status: 500,
        );
        // rethrow;
      },
    );
  }

  Stream<TiffinsState> _mapSearchEventToState(String text) async* {
    yield TiffinsState.searchLoading(
      hasReachedMax: state.hasReachedMax,
      isPaginated: state.isPaginated,
      page: state.page,
      tiffins: state.tiffins,
      search: text,
      filters: state.filters,
    );

    late final Iterable<Tiffin> currentTiffins;

    if (state.isPaginated) {
      // TODO: implement server-side search
      currentTiffins = await repository.fetchPaginatedTiffins(
        page: 1,
        filters: state.filters,
        search: text,
      );
    } else {
      currentTiffins = repository.filterSearchTiffins(
        tiffins: state.tiffins,
        search: text,
        filters: state.filters,
      );
    }

    yield TiffinsState.loaded(
      tiffins: state.tiffins,
      currentTiffins: currentTiffins,
      filters: state.filters,
      hasReachedMax: false,
      page: 1,
      isPaginated: state.isPaginated,
      search: text,
    );
  }

  Stream<TiffinsState> _mapFilterSelectedEventToState() async* {
    if (state is TiffinLoaded) {
      yield TiffinsState.loading(
        tiffins: state.tiffins,
        hasReachedMax: state.hasReachedMax,
        page: state.page,
        isPaginated: state.isPaginated,
        filters: state.filters,
        search: state.search,
      );

      late final Iterable<Tiffin> currentTiffins;

      if (state.isPaginated) {
        // TODO: implement server-side search
        currentTiffins = await repository.fetchPaginatedTiffins(
          page: 1,
          filters: state.filters,
          search: state.search,
        );
      } else {
        currentTiffins = repository.filterSearchTiffins(
          tiffins: state.tiffins,
          search: state.search,
          filters: state.filters,
        );
      }

      yield TiffinsState.loaded(
        tiffins: state.tiffins,
        currentTiffins: currentTiffins,
        hasReachedMax: false,
        page: 1,
        isPaginated: state.isPaginated,
        filters: state.filters,
        search: state.search,
      );
    }
  }

  Stream<TiffinsState> _mapFilterEventToState(String key, String value) async* {
    if (state is TiffinLoaded) {
      final Map<String, Set<String>> filters = Map.from(state.filters ?? {});
      final Set<String> filterData = Set.from(filters[key] ?? <String>{});

      if (filterData.contains(value)) {
        filters.addAll({key: filterData..remove(value)});
      } else {
        filters.addAll({key: filterData..add(value)});
      }

      yield TiffinsState.loaded(
        tiffins: state.tiffins,
        currentTiffins: (state as TiffinLoaded).currentTiffins,
        hasReachedMax: state.hasReachedMax,
        page: state.page,
        isPaginated: state.isPaginated,
        filters: filters,
        search: state.search,
      );
    }
  }

  Stream<TiffinsState> _mapLoadEventToState() async* {
    yield TiffinsState.loading(
      hasReachedMax: state.hasReachedMax,
      isPaginated: state.isPaginated,
      page: state.page,
      tiffins: state.tiffins,
    );

    late final tiffins;

    if (state.isPaginated) {
      tiffins = await repository.fetchPaginatedTiffins(page: state.page);
    } else {
      tiffins = await repository.fetchTiffins();
    }

    yield TiffinsState.loaded(
      tiffins: tiffins,
      currentTiffins: tiffins,
      hasReachedMax: false,
      page: 1,
      isPaginated: state.isPaginated,
    );
  }

  Stream<TiffinsState> _mapLoadMoreEventToState() async* {
    if (!(state is TiffinLoaded || state is TiffinLoadingMore) &&
        !state.hasReachedMax &&
        state.isPaginated) return;

    final newState = state as TiffinLoaded;

    yield TiffinsState.loadingMore(
      tiffins: newState.tiffins,
      hasReachedMax: newState.hasReachedMax,
      currentTiffins: newState.currentTiffins,
      page: newState.page,
      isPaginated: newState.isPaginated,
      search: newState.search,
      filters: newState.filters,
    );

    late final nextTiffins;

    if (state.isPaginated) {
      nextTiffins = await repository.fetchPaginatedTiffins(
        page: state.page + 1,
        filters: state.filters,
        search: state.search,
      );
    } else {
      nextTiffins = await repository.fetchTiffins();
    }

    yield TiffinsState.loaded(
      tiffins: [...newState.tiffins, ...nextTiffins],
      currentTiffins: [...newState.currentTiffins, ...nextTiffins],
      hasReachedMax: nextTiffins.isEmpty,
      page: newState.page + 1,
      isPaginated: newState.isPaginated,
      search: newState.search,
      filters: newState.filters,
    );
  }

  Stream<TiffinsState> _mapReloadEventToState() async* {
    yield TiffinsState.loading(
      hasReachedMax: state.hasReachedMax,
      filters: state.filters,
      isPaginated: state.isPaginated,
      page: 1,
      tiffins: state.tiffins,
    );

    late final tiffins;

    if (state.isPaginated) {
      tiffins = await repository.fetchPaginatedTiffins(
        page: 1,
        filters: state.filters,
      );
    } else {
      tiffins = await repository.fetchTiffins();
    }

    yield TiffinsState.loaded(
      tiffins: tiffins,
      currentTiffins: tiffins,
      hasReachedMax: false,
      filters: state.filters,
      page: 1,
      isPaginated: state.isPaginated,
    );
  }
}
