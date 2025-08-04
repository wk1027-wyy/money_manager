import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money_/feature/savings/page/savings_detail_page.dart';

/// 存钱计划页面 - 管理储蓄目标和计划
class SavingsPage extends StatelessWidget {
  const SavingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Material Grey 50
      appBar: AppBar(
        title: const Text(
          '存钱计划',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF1976D2), // Material Blue 700
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.plus,
              color: Colors.white,
              size: 20,
            ),
            onPressed: () {
              // 添加新的存钱计划
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 总储蓄概览卡片
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF1976D2), // Material Blue 700
                    Color(0xFF1565C0), // Material Blue 800
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF1976D2).withOpacity(0.3),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.piggyBank,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(width: 12),
                      Text(
                        '总储蓄金额',
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    '¥ 15,680.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: _buildMiniStatCard(
                          icon: FontAwesomeIcons.bullseye,
                          title: '进行中',
                          value: '3个计划',
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildMiniStatCard(
                          icon: FontAwesomeIcons.trophy,
                          title: '已完成',
                          value: '2个计划',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // 存钱计划列表标题
            const Text(
              '我的存钱计划',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Material Grey 900
              ),
            ),
            const SizedBox(height: 16),
            // 存钱计划列表
            _buildSavingsPlan(
              title: '买iPhone 15 Pro',
              targetAmount: 8999.00,
              currentAmount: 3500.00,
              deadline: '2024年12月',
              color: const Color(0xFF4CAF50), // Material Green 500
              icon: FontAwesomeIcons.mobileScreen,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => const SavingsDetailPage(
                          title: '买iPhone 15 Pro',
                          targetAmount: 8999.00,
                          currentAmount: 3500.00,
                          deadline: '2024年12月',
                          color: Color(0xFF4CAF50),
                          icon: FontAwesomeIcons.mobileScreen,
                        ),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            _buildSavingsPlan(
              title: '日本旅行基金',
              targetAmount: 15000.00,
              currentAmount: 8200.00,
              deadline: '2025年3月',
              color: const Color(0xFFFF9800), // Material Orange 500
              icon: FontAwesomeIcons.plane,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => const SavingsDetailPage(
                          title: '日本旅行基金',
                          targetAmount: 15000.00,
                          currentAmount: 8200.00,
                          deadline: '2025年3月',
                          color: Color(0xFFFF9800),
                          icon: FontAwesomeIcons.plane,
                        ),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            _buildSavingsPlan(
              title: '应急基金',
              targetAmount: 50000.00,
              currentAmount: 12800.00,
              deadline: '2025年6月',
              color: const Color(0xFF9C27B0), // Material Purple 500
              icon: FontAwesomeIcons.shieldHalved,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => const SavingsDetailPage(
                          title: '应急基金',
                          targetAmount: 50000.00,
                          currentAmount: 12800.00,
                          deadline: '2025年6月',
                          color: Color(0xFF9C27B0),
                          icon: FontAwesomeIcons.shieldHalved,
                        ),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            // 已完成的计划
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: const Color(0xFF4CAF50).withOpacity(0.3),
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF4CAF50).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: FaIcon(
                        FontAwesomeIcons.check,
                        color: Color(0xFF4CAF50),
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '新电脑基金',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF212121),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '目标: ¥12,000 · 已完成',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF4CAF50),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4CAF50),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      '已完成',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 添加新的存钱计划
        },
        backgroundColor: const Color(0xFF1976D2), // Material Blue 700
        child: const FaIcon(FontAwesomeIcons.plus, color: Colors.white),
      ),
    );
  }

  /// 构建迷你统计卡片
  Widget _buildMiniStatCard({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FaIcon(icon, color: Colors.white70, size: 16),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(color: Colors.white70, fontSize: 12),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  /// 构建存钱计划卡片
  Widget _buildSavingsPlan({
    required String title,
    required double targetAmount,
    required double currentAmount,
    required String deadline,
    required Color color,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    final progress = currentAmount / targetAmount;
    final progressPercentage = (progress * 100).clamp(0, 100);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(child: FaIcon(icon, color: color, size: 20)),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF212121), // Material Grey 900
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '目标日期: $deadline',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF757575), // Material Grey 600
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '${progressPercentage.toStringAsFixed(1)}%',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // 进度条
            Container(
              height: 8,
              decoration: BoxDecoration(
                color: const Color(0xFFE0E0E0), // Material Grey 300
                borderRadius: BorderRadius.circular(4),
              ),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: progress.clamp(0.0, 1.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '已存金额',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF757575), // Material Grey 600
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '¥ ${currentAmount.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF212121), // Material Grey 900
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      '目标金额',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF757575), // Material Grey 600
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '¥ ${targetAmount.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF212121), // Material Grey 900
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // 存入金额
                    },
                    icon: FaIcon(FontAwesomeIcons.plus, size: 14, color: color),
                    label: const Text('存入'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: color,
                      side: BorderSide(color: color),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // 查看详情
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.eye,
                      size: 14,
                      color: Colors.white,
                    ),
                    label: const Text('详情'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
