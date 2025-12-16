// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

/// Simple welcome screen with background image, main icon area,
/// a welcome message, and two action buttons (Login/Signup and Guest).
///
/// Usage:
/// - Ensure you have an image at `assets/background.jpg` and
///   list it in `pubspec.yaml` under `assets:`.
/// - Provide `onLogin` and `onGuest` callbacks as needed.
class WelcomeScreen extends StatelessWidget {
	final VoidCallback? onLogin;
	final VoidCallback? onGuest;
	final String backgroundImage;
	final Widget? mainIcon;

	const WelcomeScreen({
		super.key,
		this.onLogin,
		this.onGuest,
		this.backgroundImage = 'assets/images/bg.jpg',
		this.mainIcon,
	});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Stack(
				fit: StackFit.expand,
				children: [
					Image.asset(
						backgroundImage,
						fit: BoxFit.cover,
					),
					// dimming overlay for better contrast
					Container(color: Colors.black.withOpacity(0.35)),
					
          SafeArea(
						child: Column(
							mainAxisAlignment: MainAxisAlignment.center,
							children: [
								const Spacer(flex: 2),
								// main icon area
								if (mainIcon != null)
									SizedBox(width: 120, height: 120, child: mainIcon)
								else
									Container(
										width: 120,
										height: 120,
										decoration: BoxDecoration(
										color: Colors.white.withOpacity(0.12),
										borderRadius: BorderRadius.circular(24),
										),
										clipBehavior: Clip.antiAlias,
										child: Image.asset(
										'assets/images/logo.png', // add this file to assets and pubspec
										fit: BoxFit.cover,
										),
									),

								const SizedBox(height: 24),
								
                const Text(
									'Welcome to GridGuides',
									style: TextStyle(
										color: Colors.white,
										fontSize: 28,
										fontWeight: FontWeight.bold,
									),
									textAlign: TextAlign.center,
								),
								const SizedBox(height: 8),
								const Text(
									'Explore the World of Motorsport',
									style: TextStyle(color: Colors.white70, fontSize: 16),
									textAlign: TextAlign.center,
								),
								const Spacer(flex: 3),
								Padding(
									padding: const EdgeInsets.symmetric(horizontal: 24.0),
									child: Column(
										crossAxisAlignment: CrossAxisAlignment.stretch,
										children: [
											
                      ElevatedButton(
												onPressed: onLogin ?? () {},
												style: ElevatedButton.styleFrom(
													padding: const EdgeInsets.symmetric(vertical: 16),
													shape: RoundedRectangleBorder(
														borderRadius: BorderRadius.circular(8),
													),
												),
												child: const Text('Login / Signup'),
											),
											
                      const SizedBox(height: 12),
											
                      TextButton(
												onPressed: onGuest ?? () {},
												style: TextButton.styleFrom(
													padding: const EdgeInsets.symmetric(vertical: 16),
													backgroundColor: const Color.fromARGB(31, 0, 0, 0),
                          textStyle: const TextStyle(color: Colors.white),
													shape: RoundedRectangleBorder(
														borderRadius: BorderRadius.circular(8),
													),
												),
											
                      	child: const Text('Continue as Guest'),
											),
											
                      const SizedBox(height: 24),
										],
									),
								),
							],
						),
					),
				],
			),
		);
	}
}

