import 'package:flutter/material.dart';

enum InspectionCardStatus { pending, completed, neutral }

class InspectionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final InspectionCardStatus status;
  final String? statusLabel;
  final VoidCallback? onTap;

  const InspectionCard({
    super.key,
    required this.title,
    required this.icon,
    this.status = InspectionCardStatus.neutral,
    this.statusLabel,
    this.onTap,
  });

  Color _iconBackgroundColor(BuildContext context) {
    switch (status) {
      case InspectionCardStatus.pending:
        return Colors.red.withOpacity(0.1);
      case InspectionCardStatus.completed:
        return Colors.green.withOpacity(0.1);
      case InspectionCardStatus.neutral:
        return Colors.blue.withOpacity(0.1);
    }
  }

  Color _iconColor() {
    switch (status) {
      case InspectionCardStatus.pending:
        return Colors.red;
      case InspectionCardStatus.completed:
        return Colors.green;
      case InspectionCardStatus.neutral:
        return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(8),

        onTap: onTap,

        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// icon e status
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: _iconBackgroundColor(context),
                      shape: BoxShape.circle,
                    ),

                    child: Icon(icon, color: _iconColor()),
                  ),
                  const Spacer(),

                  if (statusLabel != null)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),

                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: Text(
                        statusLabel!,
                        style: TextStyle(
                          color: _iconColor(),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                ],
              ),

              const SizedBox(height: 16),

              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF444A4F),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
