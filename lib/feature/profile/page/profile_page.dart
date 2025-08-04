import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// 个人信息页面 - 用户设置和功能选项
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Material Grey 50
      appBar: AppBar(
        title: const Text(
          '个人中心',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF1976D2), // Material Blue 700
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.gear,
              color: Colors.white,
              size: 20,
            ),
            onPressed: () {
              // 设置功能
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 用户信息卡片
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(16),
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
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1976D2), // Material Blue 700
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: FaIcon(
                        FontAwesomeIcons.user,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '记账达人',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF212121), // Material Grey 900
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '已记账 30 天',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF757575), // Material Grey 600
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
                      color: const Color(0xFFE3F2FD), // Material Blue 50
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'VIP',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1976D2), // Material Blue 700
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // 功能菜单
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
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
                children: [
                  _buildMenuItem(
                    icon: FontAwesomeIcons.chartPie,
                    title: '预算管理',
                    subtitle: '设置月度预算',
                    color: const Color(0xFF4CAF50), // Material Green 500
                    onTap: () {},
                  ),
                  _buildDivider(),
                  _buildMenuItem(
                    icon: FontAwesomeIcons.tags,
                    title: '分类管理',
                    subtitle: '自定义收支分类',
                    color: const Color(0xFFFF9800), // Material Orange 500
                    onTap: () {},
                  ),
                  _buildDivider(),
                  _buildMenuItem(
                    icon: FontAwesomeIcons.fileExport,
                    title: '数据导出',
                    subtitle: '导出账单数据',
                    color: const Color(0xFF9C27B0), // Material Purple 500
                    onTap: () {},
                  ),
                  _buildDivider(),
                  _buildMenuItem(
                    icon: FontAwesomeIcons.cloudArrowUp,
                    title: '数据备份',
                    subtitle: '云端同步备份',
                    color: const Color(0xFF2196F3), // Material Blue 500
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // 设置菜单
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
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
                children: [
                  _buildMenuItem(
                    icon: FontAwesomeIcons.bell,
                    title: '通知设置',
                    subtitle: '记账提醒设置',
                    color: const Color(0xFFFF5722), // Material Deep Orange 500
                    onTap: () {},
                  ),
                  _buildDivider(),
                  _buildMenuItem(
                    icon: FontAwesomeIcons.palette,
                    title: '主题设置',
                    subtitle: '个性化界面',
                    color: const Color(0xFF795548), // Material Brown 500
                    onTap: () {},
                  ),
                  _buildDivider(),
                  _buildMenuItem(
                    icon: FontAwesomeIcons.language,
                    title: '语言设置',
                    subtitle: '切换界面语言',
                    color: const Color(0xFF607D8B), // Material Blue Grey 500
                    onTap: () {},
                  ),
                  _buildDivider(),
                  _buildMenuItem(
                    icon: FontAwesomeIcons.shield,
                    title: '隐私安全',
                    subtitle: '密码锁定设置',
                    color: const Color(0xFF009688), // Material Teal 500
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // 帮助与反馈
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
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
                children: [
                  _buildMenuItem(
                    icon: FontAwesomeIcons.circleQuestion,
                    title: '帮助中心',
                    subtitle: '使用指南和常见问题',
                    color: const Color(0xFF3F51B5), // Material Indigo 500
                    onTap: () {},
                  ),
                  _buildDivider(),
                  _buildMenuItem(
                    icon: FontAwesomeIcons.comment,
                    title: '意见反馈',
                    subtitle: '告诉我们您的建议',
                    color: const Color(0xFFE91E63), // Material Pink 500
                    onTap: () {},
                  ),
                  _buildDivider(),
                  _buildMenuItem(
                    icon: FontAwesomeIcons.circleInfo,
                    title: '关于我们',
                    subtitle: '版本信息和开发团队',
                    color: const Color(0xFF757575), // Material Grey 600
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  /// 构建菜单项
  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: FaIcon(
                  icon,
                  color: color,
                  size: 18,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF212121), // Material Grey 900
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF757575), // Material Grey 600
                    ),
                  ),
                ],
              ),
            ),
            const FaIcon(
              FontAwesomeIcons.chevronRight,
              color: Color(0xFFBDBDBD), // Material Grey 400
              size: 14,
            ),
          ],
        ),
      ),
    );
  }

  /// 构建分割线
  Widget _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 1,
      color: const Color(0xFFF5F5F5), // Material Grey 50
    );
  }
}