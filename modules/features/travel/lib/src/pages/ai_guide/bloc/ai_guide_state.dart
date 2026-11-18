part of 'ai_guide_cubit.dart';

@freezed
abstract class AiGuideState with _$AiGuideState {
  factory AiGuideState({
    @Default(false) bool isLoading,
    String? url,
    String? errorMessage,
  }) = _AiGuideState;
}
