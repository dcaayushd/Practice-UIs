import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repo/comment_repository.dart';
import '../../widgets/error.dart';
import 'bloc/comment_list_bloc_bloc.dart';
import 'comment.dart';

class CommentList extends StatelessWidget {
  final int productId;
  const CommentList({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) {
      final CommentListBloc bloc =
          CommentListBloc(repository: commentRepository, productId: productId);
      bloc.add(CommentListStarted());
      return bloc;
    }, child: BlocBuilder<CommentListBloc, CommentListBlocState>(
        builder: ((context, state) {
      if (state is CommentListSuccess) {
        return SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return CommentItem(comment: state.comments[index]);
        }, childCount: state.comments.length));
      } else if (state is CommentListLoading) {
        return const SliverToBoxAdapter(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else if (state is CommentListError) {
        return AppErrorWidget(
            appException: state.exception,
            ontap: () => BlocProvider.of<CommentListBloc>(context)
                .add(CommentListStarted()));
      } else {
        throw "we have problems here developer !";
      }
    })));
  }
}
