import 'package:flutter/material.dart';
import 'package:frota/src/components/atoms/app_top_bar/app_top_bar.dart';
import 'package:frota/src/components/molecules/app_taskwidgetitem.dart';
import 'package:frota/src/components/organisms/app_bannner.dart';
import 'package:frota/src/pages/home/viewmodel/home_viewmodel.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewmodel>();

    return Material(
      color: const Color(0xFFF3F4F6),
      child: SafeArea(
        child: Column(
          children: [
            const AppTopBar(title: '', type: TopBarType.home),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),

                    AppBanner(
                      subtitle: 'Acompanhe seus',
                      title: "Indicadores",
                      icon: Icons.arrow_forward,
                      onTap: () {},
                    ),

                    const SizedBox(height: 32),

                    Text(
                      'Tarefas',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0XFF525252),
                      ),
                    ),

                    const SizedBox(height: 8),

                    ListView.separated(
                      shrinkWrap: true,

                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: viewModel.tasks.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 16),

                      itemBuilder: (context, index) {
                        final task = viewModel.tasks[index];

                        return AppTaskwidgetitem(
                          title: task.title,
                          subtitle: task.subtitle,
                          status: task.status,
                          statusLabel: task.statusLabel,
                          icon: task.icon,
                          onTap: task.title == 'Inspeções'
                              ? () =>
                                    Navigator.pushNamed(context, '/inspections')
                              : null,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
