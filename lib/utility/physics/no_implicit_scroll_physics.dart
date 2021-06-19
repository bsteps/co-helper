
import 'package:flutter/material.dart';

class NoImplicitScrollPhysics extends AlwaysScrollableScrollPhysics { 
   const NoImplicitScrollPhysics({ ScrollPhysics? parent }) : super(parent: parent); 
  
   @override 
   bool get allowImplicitScrolling => false; 
  
   @override 
   NoImplicitScrollPhysics applyTo(ScrollPhysics? ancestor) { 
     return NoImplicitScrollPhysics(parent: buildParent(ancestor)); 
   }
 } 