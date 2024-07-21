import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentaion/manger/newest_books_cubit/newest_cubit.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/best_seller_item.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestCubit, NewestState>(
      builder: (context, state) {
        if (state is NewsCubitSuccess) {
          return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerItem(
                    bookModels: state.books[index],
                  ),
                );
              });
        } else if (state is NewsCubitError) {
          return CustomErrorMessage(message: state.error);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
