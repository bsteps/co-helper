import 'package:co_helper/data/models/Subscription.dart';
import 'package:co_helper/logic/subscriptions/bloc/subscriptions_bloc.dart';
import 'package:co_helper/presentation/mixins/pagination_mixin.dart';
import 'package:co_helper/presentation/screens/subscription/subscription_list_item.dart';
import 'package:co_helper/presentation/widgets/custom_sliver_persistent_header.dart';
import 'package:co_helper/presentation/widgets/error_dialog.dart';
import 'package:co_helper/presentation/widgets/no_data.dart';
import 'package:co_helper/utility/physics/no_implicit_scroll_physics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubscriptionList extends StatefulWidget {
  const SubscriptionList({
    Key? key,
  }) : super(key: key);

  @override
  _SubscriptionListState createState() => _SubscriptionListState();
}

class _SubscriptionListState extends State<SubscriptionList>
    with PaginationMixin {
  @override
  void initState() {
    super.initState();
    initiatePagination(onReachedLast: () {
      final SubscriptionsBloc subscriptionBloc = context.read();

      if (subscriptionBloc.state is SubscriptionLoaded &&
          subscriptionBloc.state.isPaginated &&
          !subscriptionBloc.state.hasReachedMax) {
        subscriptionBloc.add(SubscriptionsEvent.loadMore());
      }
    });
  }

  @override
  void dispose() {
    disposePagination();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<SubscriptionsBloc>().add(SubscriptionsEvent.reload());
      },
      child: BlocConsumer<SubscriptionsBloc, SubscriptionsState>(
        listener: (context, state) {
          if (state is SubscriptionError) {
            ErrorDialog.showLoadingDialog(context, state.message);
          }
        },
        builder: (context, state) {
          return state.when(
            initial: (_, __, ___, ____) => Container(),
            loading: (_, __, ___, ____) => Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            ),
            loaded: (_, __, ___, ____, currentSubscriptions) {
              return _widgetSubscriptionsListView(currentSubscriptions);
            },
            error: (_, __, ___, ____, message, status) {
              return NoDataWidget(text: "No Data");
            },
            loadingMore: (_, __, ___, ____, currentSubscriptions) {
              return _widgetSubscriptionsListView(currentSubscriptions, true);
            },
          );
        },
      ),
    );
  }

  Widget _widgetSubscriptionsListView(Iterable<Subscription> subscriptions,
      [bool isLoading = false]) {
    if (subscriptions.isEmpty) return NoDataWidget(text: "No Data Available");

    return Container(
      child: CustomScrollView(
        controller: scrollPaginationController,
        physics: NoImplicitScrollPhysics(),
        // key: pageKey, `
        slivers: [
          SliverList(
            // key: pageKey,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  padding: index == 0
                      ? const EdgeInsets.only(top: 8, left: 8, right: 8)
                      : const EdgeInsets.symmetric(horizontal: 8),
                  child: SubscriptionListItem(
                    subscription: subscriptions.elementAt(index),
                    onPressed: () {
                      context.read<SubscriptionsBloc>().add(
                            SubscriptionsEvent.unsubscribe(
                              subscription: subscriptions.elementAt(index),
                            ),
                          );
                    },
                  ),
                );
              },
              childCount: subscriptions.length,
            ),
          ),
          if (isLoading)
            CustomSliverPersistentHeader(
              maxHeight: 40,
              minHeight: 40,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}
