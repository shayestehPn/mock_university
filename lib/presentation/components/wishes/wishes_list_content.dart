import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mock_university/presentation/components/wishes/wish_card.dart';

import '../../../business_logic/wishes/wishes_cubit.dart';
import '../../../business_logic/wishes/wishes_state.dart';

class WishesListContent extends StatelessWidget {
  const WishesListContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishesCubit, WishesState>(
        buildWhen: (pState, nState) {
      return pState.wishesData?.wishesList!=
          nState.wishesData?.wishesList;
    }, builder: (context, state) {
      return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: state.wishesData!.wishesList.length,
          itemBuilder: (context, index) => WishCard(
            courseEntity: state.wishesData!.wishesList[index],
            removeOnClick: () {
              context.read<WishesCubit>().removeWishCourse(index);
            },
          ));
    });
  }
}
