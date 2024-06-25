

//  basic プラン
import 'package:core_dao/dao/quiz_get_all/quiz_get_all_response.dart';

class AppQuizData {
  ////////////////////     形容詞      ////////////////////
  static final List<Quiz> korianBiginnerAdjectives = [
    Quiz(
      text: "빠르다",
      options: [
        Option(text: "遅い", isCorrect: false),
        Option(text: "速い", isCorrect: true),
        Option(text: "大きい", isCorrect: false),
        Option(text: "小さい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "춥다",
      options: [
        Option(text: "暑い", isCorrect: false),
        Option(text: "寒い", isCorrect: true),
        Option(text: "涼しい", isCorrect: false),
        Option(text: "暖かい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "아름답다",
      options: [
        Option(text: "美しい", isCorrect: true),
        Option(text: "醜い", isCorrect: false),
        Option(text: "優しい", isCorrect: false),
        Option(text: "愚か", isCorrect: false),
      ],
    ),
    Quiz(
      text: "좋다",
      options: [
        Option(text: "良い", isCorrect: true),
        Option(text: "悪い", isCorrect: false),
        Option(text: "難しい", isCorrect: false),
        Option(text: "簡単な", isCorrect: false),
      ],
    ),
    Quiz(
      text: "느리다",
      options: [
        Option(text: "速い", isCorrect: false),
        Option(text: "遅い", isCorrect: true),
        Option(text: "大きい", isCorrect: false),
        Option(text: "小さい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "덥다",
      options: [
        Option(text: "寒い", isCorrect: false),
        Option(text: "暑い", isCorrect: true),
        Option(text: "涼しい", isCorrect: false),
        Option(text: "暖かい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "깨끗하다",
      options: [
        Option(text: "汚い", isCorrect: false),
        Option(text: "綺麗な", isCorrect: true),
        Option(text: "古い", isCorrect: false),
        Option(text: "新しい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "작다",
      options: [
        Option(text: "大きい", isCorrect: false),
        Option(text: "小さい", isCorrect: true),
        Option(text: "高い", isCorrect: false),
        Option(text: "低い", isCorrect: false),
      ],
    ),
    Quiz(
      text: "싸다",
      options: [
        Option(text: "高い", isCorrect: false),
        Option(text: "安い", isCorrect: true),
        Option(text: "大きい", isCorrect: false),
        Option(text: "小さい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "무겁다",
      options: [
        Option(text: "軽い", isCorrect: false),
        Option(text: "重い", isCorrect: true),
        Option(text: "速い", isCorrect: false),
        Option(text: "遅い", isCorrect: false),
      ],
    ),
    Quiz(
      text: "비싸다",
      options: [
        Option(text: "安い", isCorrect: false),
        Option(text: "高い", isCorrect: true),
        Option(text: "大きい", isCorrect: false),
        Option(text: "小さい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "쉽다",
      options: [
        Option(text: "難しい", isCorrect: false),
        Option(text: "易しい", isCorrect: true),
        Option(text: "高い", isCorrect: false),
        Option(text: "低い", isCorrect: false),
      ],
    ),
    Quiz(
      text: "어렵다",
      options: [
        Option(text: "簡単な", isCorrect: false),
        Option(text: "難しい", isCorrect: true),
        Option(text: "高い", isCorrect: false),
        Option(text: "低い", isCorrect: false),
      ],
    ),
    Quiz(
      text: "높다",
      options: [
        Option(text: "低い", isCorrect: false),
        Option(text: "高い", isCorrect: true),
        Option(text: "大きい", isCorrect: false),
        Option(text: "小さい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "낮다",
      options: [
        Option(text: "高い", isCorrect: false),
        Option(text: "低い", isCorrect: true),
        Option(text: "大きい", isCorrect: false),
        Option(text: "小さい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "길다",
      options: [
        Option(text: "短い", isCorrect: false),
        Option(text: "長い", isCorrect: true),
        Option(text: "大きい", isCorrect: false),
        Option(text: "小さい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "짧다",
      options: [
        Option(text: "長い", isCorrect: false),
        Option(text: "短い", isCorrect: true),
        Option(text: "高い", isCorrect: false),
        Option(text: "低い", isCorrect: false),
      ],
    ),
    Quiz(
      text: "새롭다",
      options: [
        Option(text: "古い", isCorrect: false),
        Option(text: "新しい", isCorrect: true),
        Option(text: "大きい", isCorrect: false),
        Option(text: "小さい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "오래되다",
      options: [
        Option(text: "新しい", isCorrect: false),
        Option(text: "古い", isCorrect: true),
        Option(text: "高い", isCorrect: false),
        Option(text: "低い", isCorrect: false),
      ],
    ),
    Quiz(
      text: "예쁘다",
      options: [
        Option(text: "醜い", isCorrect: false),
        Option(text: "綺麗な", isCorrect: true),
        Option(text: "大きい", isCorrect: false),
        Option(text: "小さい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "추하다",
      options: [
        Option(text: "綺麗な", isCorrect: false),
        Option(text: "醜い", isCorrect: true),
        Option(text: "高い", isCorrect: false),
        Option(text: "低い", isCorrect: false),
      ],
    ),
    Quiz(
      text: "즐겁다",
      options: [
        Option(text: "悲しい", isCorrect: false),
        Option(text: "楽しい", isCorrect: true),
        Option(text: "怒っている", isCorrect: false),
        Option(text: "驚いた", isCorrect: false),
      ],
    ),
    Quiz(
      text: "기쁘다",
      options: [
        Option(text: "悲しい", isCorrect: false),
        Option(text: "嬉しい", isCorrect: true),
        Option(text: "怒っている", isCorrect: false),
        Option(text: "驚いた", isCorrect: false),
      ],
    ),
    Quiz(
      text: "슬프다",
      options: [
        Option(text: "嬉しい", isCorrect: false),
        Option(text: "悲しい", isCorrect: true),
        Option(text: "怒っている", isCorrect: false),
        Option(text: "驚いた", isCorrect: false),
      ],
    ),
    Quiz(
      text: "화나다",
      options: [
        Option(text: "悲しい", isCorrect: false),
        Option(text: "怒っている", isCorrect: true),
        Option(text: "嬉しい", isCorrect: false),
        Option(text: "驚いた", isCorrect: false),
      ],
    ),
    Quiz(
      text: "놀라다",
      options: [
        Option(text: "驚いた", isCorrect: true),
        Option(text: "悲しい", isCorrect: false),
        Option(text: "怒っている", isCorrect: false),
        Option(text: "嬉しい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "피곤하다",
      options: [
        Option(text: "元気な", isCorrect: false),
        Option(text: "疲れた", isCorrect: true),
        Option(text: "嬉しい", isCorrect: false),
        Option(text: "悲しい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "건강하다",
      options: [
        Option(text: "病気の", isCorrect: false),
        Option(text: "健康な", isCorrect: true),
        Option(text: "元気な", isCorrect: false),
        Option(text: "疲れた", isCorrect: false),
      ],
    ),
    Quiz(
      text: "부지런하다",
      options: [
        Option(text: "怠惰な", isCorrect: false),
        Option(text: "勤勉な", isCorrect: true),
        Option(text: "元気な", isCorrect: false),
        Option(text: "疲れた", isCorrect: false),
      ],
    ),
    Quiz(
      text: "게으르다",
      options: [
        Option(text: "勤勉な", isCorrect: false),
        Option(text: "怠惰な", isCorrect: true),
        Option(text: "元気な", isCorrect: false),
        Option(text: "疲れた", isCorrect: false),
      ],
    ),
    Quiz(
      text: "밝다",
      options: [
        Option(text: "暗い", isCorrect: false),
        Option(text: "明るい", isCorrect: true),
        Option(text: "高い", isCorrect: false),
        Option(text: "低い", isCorrect: false),
      ],
    ),
    Quiz(
      text: "어둡다",
      options: [
        Option(text: "明るい", isCorrect: false),
        Option(text: "暗い", isCorrect: true),
        Option(text: "高い", isCorrect: false),
        Option(text: "低い", isCorrect: false),
      ],
    ),
    Quiz(
      text: "멋있다",
      options: [
        Option(text: "格好悪い", isCorrect: false),
        Option(text: "格好いい", isCorrect: true),
        Option(text: "綺麗な", isCorrect: false),
        Option(text: "醜い", isCorrect: false),
      ],
    ),
    Quiz(
      text: "지루하다",
      options: [
        Option(text: "面白い", isCorrect: false),
        Option(text: "退屈な", isCorrect: true),
        Option(text: "楽しい", isCorrect: false),
        Option(text: "嬉しい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "재미있다",
      options: [
        Option(text: "退屈な", isCorrect: false),
        Option(text: "面白い", isCorrect: true),
        Option(text: "嬉しい", isCorrect: false),
        Option(text: "悲しい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "졸리다",
      options: [
        Option(text: "元気な", isCorrect: false),
        Option(text: "眠い", isCorrect: true),
        Option(text: "疲れた", isCorrect: false),
        Option(text: "嬉しい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "아프다",
      options: [
        Option(text: "健康な", isCorrect: false),
        Option(text: "痛い", isCorrect: true),
        Option(text: "元気な", isCorrect: false),
        Option(text: "疲れた", isCorrect: false),
      ],
    ),
    Quiz(
      text: "행복하다",
      options: [
        Option(text: "悲しい", isCorrect: false),
        Option(text: "幸せな", isCorrect: true),
        Option(text: "怒っている", isCorrect: false),
        Option(text: "驚いた", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사랑스럽다",
      options: [
        Option(text: "憎らしい", isCorrect: false),
        Option(text: "愛しい", isCorrect: true),
        Option(text: "悲しい", isCorrect: false),
        Option(text: "嬉しい", isCorrect: false),
      ],
    ),
  ];

  //////////////  副詞　/////////////////////
  static final List<Quiz> korianBiginnerAdvers = [
    Quiz(
      text: "빨리",
      options: [
        Option(text: "遅く", isCorrect: false),
        Option(text: "早く", isCorrect: true),
        Option(text: "静かに", isCorrect: false),
        Option(text: "ゆっくり", isCorrect: false),
      ],
    ),
    Quiz(
      text: "천천히",
      options: [
        Option(text: "早く", isCorrect: false),
        Option(text: "遅く", isCorrect: true),
        Option(text: "静かに", isCorrect: false),
        Option(text: "ゆっくり", isCorrect: true),
      ],
    ),
    Quiz(
      text: "조용히",
      options: [
        Option(text: "大きく", isCorrect: false),
        Option(text: "静かに", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "ゆっくり", isCorrect: false),
      ],
    ),
    Quiz(
      text: "크게",
      options: [
        Option(text: "小さく", isCorrect: false),
        Option(text: "大きく", isCorrect: true),
        Option(text: "静かに", isCorrect: false),
        Option(text: "早く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "작게",
      options: [
        Option(text: "大きく", isCorrect: false),
        Option(text: "小さく", isCorrect: true),
        Option(text: "静かに", isCorrect: false),
        Option(text: "早く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "정확히",
      options: [
        Option(text: "適当に", isCorrect: false),
        Option(text: "正確に", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "ゆっくり", isCorrect: false),
      ],
    ),
    Quiz(
      text: "대충",
      options: [
        Option(text: "正確に", isCorrect: false),
        Option(text: "適当に", isCorrect: true),
        Option(text: "ゆっくり", isCorrect: false),
        Option(text: "早く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "조금",
      options: [
        Option(text: "多く", isCorrect: false),
        Option(text: "少し", isCorrect: true),
        Option(text: "静かに", isCorrect: false),
        Option(text: "早く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "많이",
      options: [
        Option(text: "少し", isCorrect: false),
        Option(text: "多く", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "자주",
      options: [
        Option(text: "時々", isCorrect: false),
        Option(text: "頻繁に", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "계속",
      options: [
        Option(text: "一度", isCorrect: false),
        Option(text: "ずっと", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가끔",
      options: [
        Option(text: "頻繁に", isCorrect: false),
        Option(text: "時々", isCorrect: true),
        Option(text: "ずっと", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "한번",
      options: [
        Option(text: "頻繁に", isCorrect: false),
        Option(text: "一度", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "다시",
      options: [
        Option(text: "一度", isCorrect: false),
        Option(text: "もう一度", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "아마도",
      options: [
        Option(text: "絶対に", isCorrect: false),
        Option(text: "たぶん", isCorrect: true),
        Option(text: "ずっと", isCorrect: false),
        Option(text: "一度", isCorrect: false),
      ],
    ),
    Quiz(
      text: "확실히",
      options: [
        Option(text: "たぶん", isCorrect: false),
        Option(text: "確かに", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "조심스럽게",
      options: [
        Option(text: "大胆に", isCorrect: false),
        Option(text: "慎重に", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "용감하게",
      options: [
        Option(text: "慎重に", isCorrect: false),
        Option(text: "勇敢に", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "예의 바르게",
      options: [
        Option(text: "失礼に", isCorrect: false),
        Option(text: "礼儀正しく", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "실례되게",
      options: [
        Option(text: "礼儀正しく", isCorrect: false),
        Option(text: "失礼に", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "신속하게",
      options: [
        Option(text: "遅く", isCorrect: false),
        Option(text: "迅速に", isCorrect: true),
        Option(text: "静かに", isCorrect: false),
        Option(text: "ゆっくり", isCorrect: false),
      ],
    ),
    Quiz(
      text: "천천히",
      options: [
        Option(text: "迅速に", isCorrect: false),
        Option(text: "ゆっくり", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "쉽게",
      options: [
        Option(text: "難しく", isCorrect: false),
        Option(text: "簡単に", isCorrect: true),
        Option(text: "ゆっくり", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "어렵게",
      options: [
        Option(text: "簡単に", isCorrect: false),
        Option(text: "難しく", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "조용히",
      options: [
        Option(text: "うるさく", isCorrect: false),
        Option(text: "静かに", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "ゆっくり", isCorrect: false),
      ],
    ),
    Quiz(
      text: "시끄럽게",
      options: [
        Option(text: "静かに", isCorrect: false),
        Option(text: "うるさく", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "ゆっくり", isCorrect: false),
      ],
    ),
    Quiz(
      text: "아주",
      options: [
        Option(text: "少し", isCorrect: false),
        Option(text: "とても", isCorrect: true),
        Option(text: "静かに", isCorrect: false),
        Option(text: "早く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "조금",
      options: [
        Option(text: "とても", isCorrect: false),
        Option(text: "少し", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "혼자",
      options: [
        Option(text: "一緒に", isCorrect: false),
        Option(text: "一人で", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "같이",
      options: [
        Option(text: "一人で", isCorrect: false),
        Option(text: "一緒に", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "밤에",
      options: [
        Option(text: "昼に", isCorrect: false),
        Option(text: "夜に", isCorrect: true),
        Option(text: "朝に", isCorrect: false),
        Option(text: "夕方に", isCorrect: false),
      ],
    ),
    Quiz(
      text: "낮에",
      options: [
        Option(text: "夜に", isCorrect: false),
        Option(text: "昼に", isCorrect: true),
        Option(text: "朝に", isCorrect: false),
        Option(text: "夕方に", isCorrect: false),
      ],
    ),
    Quiz(
      text: "먼저",
      options: [
        Option(text: "後に", isCorrect: false),
        Option(text: "先に", isCorrect: true),
        Option(text: "一緒に", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
    Quiz(
      text: "나중에",
      options: [
        Option(text: "先に", isCorrect: false),
        Option(text: "後に", isCorrect: true),
        Option(text: "早く", isCorrect: false),
        Option(text: "静かに", isCorrect: false),
      ],
    ),
  ];

  /////////////  動詞　　/////////////////////
  static final List<Quiz> korianBiginnerVerbs = [
    Quiz(
      text: "먹다",
      options: [
        Option(text: "飲む", isCorrect: false),
        Option(text: "食べる", isCorrect: true),
        Option(text: "読む", isCorrect: false),
        Option(text: "書く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "마시다",
      options: [
        Option(text: "食べる", isCorrect: false),
        Option(text: "飲む", isCorrect: true),
        Option(text: "読む", isCorrect: false),
        Option(text: "書く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "보다",
      options: [
        Option(text: "聞く", isCorrect: false),
        Option(text: "見る", isCorrect: true),
        Option(text: "話す", isCorrect: false),
        Option(text: "書く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "듣다",
      options: [
        Option(text: "話す", isCorrect: false),
        Option(text: "聞く", isCorrect: true),
        Option(text: "見る", isCorrect: false),
        Option(text: "書く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "읽다",
      options: [
        Option(text: "書く", isCorrect: false),
        Option(text: "読む", isCorrect: true),
        Option(text: "聞く", isCorrect: false),
        Option(text: "見る", isCorrect: false),
      ],
    ),
    Quiz(
      text: "쓰다",
      options: [
        Option(text: "読む", isCorrect: false),
        Option(text: "書く", isCorrect: true),
        Option(text: "聞く", isCorrect: false),
        Option(text: "見る", isCorrect: false),
      ],
    ),
    Quiz(
      text: "걷다",
      options: [
        Option(text: "走る", isCorrect: false),
        Option(text: "歩く", isCorrect: true),
        Option(text: "飛ぶ", isCorrect: false),
        Option(text: "泳ぐ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "달리다",
      options: [
        Option(text: "歩く", isCorrect: false),
        Option(text: "走る", isCorrect: true),
        Option(text: "飛ぶ", isCorrect: false),
        Option(text: "泳ぐ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "날다",
      options: [
        Option(text: "泳ぐ", isCorrect: false),
        Option(text: "飛ぶ", isCorrect: true),
        Option(text: "歩く", isCorrect: false),
        Option(text: "走る", isCorrect: false),
      ],
    ),
    Quiz(
      text: "수영하다",
      options: [
        Option(text: "飛ぶ", isCorrect: false),
        Option(text: "泳ぐ", isCorrect: true),
        Option(text: "歩く", isCorrect: false),
        Option(text: "走る", isCorrect: false),
      ],
    ),
    Quiz(
      text: "자다",
      options: [
        Option(text: "起きる", isCorrect: false),
        Option(text: "寝る", isCorrect: true),
        Option(text: "食べる", isCorrect: false),
        Option(text: "飲む", isCorrect: false),
      ],
    ),
    Quiz(
      text: "일어나다",
      options: [
        Option(text: "寝る", isCorrect: false),
        Option(text: "起きる", isCorrect: true),
        Option(text: "食べる", isCorrect: false),
        Option(text: "飲む", isCorrect: false),
      ],
    ),
    Quiz(
      text: "앉다",
      options: [
        Option(text: "立つ", isCorrect: false),
        Option(text: "座る", isCorrect: true),
        Option(text: "走る", isCorrect: false),
        Option(text: "飛ぶ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "서다",
      options: [
        Option(text: "座る", isCorrect: false),
        Option(text: "立つ", isCorrect: true),
        Option(text: "歩く", isCorrect: false),
        Option(text: "走る", isCorrect: false),
      ],
    ),
    Quiz(
      text: "만나다",
      options: [
        Option(text: "別れる", isCorrect: false),
        Option(text: "会う", isCorrect: true),
        Option(text: "話す", isCorrect: false),
        Option(text: "聞く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "헤어지다",
      options: [
        Option(text: "会う", isCorrect: false),
        Option(text: "別れる", isCorrect: true),
        Option(text: "話す", isCorrect: false),
        Option(text: "聞く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가르치다",
      options: [
        Option(text: "学ぶ", isCorrect: false),
        Option(text: "教える", isCorrect: true),
        Option(text: "聞く", isCorrect: false),
        Option(text: "話す", isCorrect: false),
      ],
    ),
    Quiz(
      text: "배우다",
      options: [
        Option(text: "教える", isCorrect: false),
        Option(text: "学ぶ", isCorrect: true),
        Option(text: "見る", isCorrect: false),
        Option(text: "聞く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가다",
      options: [
        Option(text: "来る", isCorrect: false),
        Option(text: "行く", isCorrect: true),
        Option(text: "走る", isCorrect: false),
        Option(text: "歩く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "오다",
      options: [
        Option(text: "行く", isCorrect: false),
        Option(text: "来る", isCorrect: true),
        Option(text: "走る", isCorrect: false),
        Option(text: "歩く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사다",
      options: [
        Option(text: "売る", isCorrect: false),
        Option(text: "買う", isCorrect: true),
        Option(text: "借りる", isCorrect: false),
        Option(text: "貸す", isCorrect: false),
      ],
    ),
    Quiz(
      text: "팔다",
      options: [
        Option(text: "買う", isCorrect: false),
        Option(text: "売る", isCorrect: true),
        Option(text: "借りる", isCorrect: false),
        Option(text: "貸す", isCorrect: false),
      ],
    ),
    Quiz(
      text: "빌리다",
      options: [
        Option(text: "貸す", isCorrect: false),
        Option(text: "借りる", isCorrect: true),
        Option(text: "買う", isCorrect: false),
        Option(text: "売る", isCorrect: false),
      ],
    ),
    Quiz(
      text: "빌려주다",
      options: [
        Option(text: "借りる", isCorrect: false),
        Option(text: "貸す", isCorrect: true),
        Option(text: "買う", isCorrect: false),
        Option(text: "売る", isCorrect: false),
      ],
    ),
    Quiz(
      text: "만들다",
      options: [
        Option(text: "壊す", isCorrect: false),
        Option(text: "作る", isCorrect: true),
        Option(text: "食べる", isCorrect: false),
        Option(text: "飲む", isCorrect: false),
      ],
    ),
    Quiz(
      text: "부수다",
      options: [
        Option(text: "作る", isCorrect: false),
        Option(text: "壊す", isCorrect: true),
        Option(text: "見る", isCorrect: false),
        Option(text: "聞く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "알다",
      options: [
        Option(text: "知らない", isCorrect: false),
        Option(text: "知っている", isCorrect: true),
        Option(text: "見る", isCorrect: false),
        Option(text: "聞く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "모르다",
      options: [
        Option(text: "知っている", isCorrect: false),
        Option(text: "知らない", isCorrect: true),
        Option(text: "見る", isCorrect: false),
        Option(text: "聞く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "기다리다",
      options: [
        Option(text: "待つ", isCorrect: true),
        Option(text: "急ぐ", isCorrect: false),
        Option(text: "見る", isCorrect: false),
        Option(text: "聞く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "맡다",
      options: [
        Option(text: "頼む", isCorrect: false),
        Option(text: "任せる", isCorrect: true),
        Option(text: "見る", isCorrect: false),
        Option(text: "聞く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "부탁하다",
      options: [
        Option(text: "頼む", isCorrect: true),
        Option(text: "任せる", isCorrect: false),
        Option(text: "見る", isCorrect: false),
        Option(text: "聞く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "돕다",
      options: [
        Option(text: "手伝う", isCorrect: true),
        Option(text: "頼む", isCorrect: false),
        Option(text: "見る", isCorrect: false),
        Option(text: "聞く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "도와주다",
      options: [
        Option(text: "手伝う", isCorrect: true),
        Option(text: "頼む", isCorrect: false),
        Option(text: "見る", isCorrect: false),
        Option(text: "聞く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "연습하다",
      options: [
        Option(text: "練習する", isCorrect: true),
        Option(text: "勉強する", isCorrect: false),
        Option(text: "見る", isCorrect: false),
        Option(text: "聞く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "공부하다",
      options: [
        Option(text: "練習する", isCorrect: false),
        Option(text: "勉強する", isCorrect: true),
        Option(text: "見る", isCorrect: false),
        Option(text: "聞く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "이해하다",
      options: [
        Option(text: "理解する", isCorrect: true),
        Option(text: "思う", isCorrect: false),
        Option(text: "見る", isCorrect: false),
        Option(text: "聞く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "생각하다",
      options: [
        Option(text: "理解する", isCorrect: false),
        Option(text: "思う", isCorrect: true),
        Option(text: "見る", isCorrect: false),
        Option(text: "聞く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "말하다",
      options: [
        Option(text: "話す", isCorrect: true),
        Option(text: "聞く", isCorrect: false),
        Option(text: "見る", isCorrect: false),
        Option(text: "書く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "자다",
      options: [
        Option(text: "起きる", isCorrect: false),
        Option(text: "寝る", isCorrect: true),
        Option(text: "食べる", isCorrect: false),
        Option(text: "飲む", isCorrect: false),
      ],
    ),
    Quiz(
      text: "입다",
      options: [
        Option(text: "脱ぐ", isCorrect: false),
        Option(text: "着る", isCorrect: true),
        Option(text: "食べる", isCorrect: false),
        Option(text: "飲む", isCorrect: false),
      ],
    ),
    Quiz(
      text: "끝나다",
      options: [
        Option(text: "始める", isCorrect: false),
        Option(text: "終わる", isCorrect: true),
        Option(text: "食べる", isCorrect: false),
        Option(text: "飲む", isCorrect: false),
      ],
    ),
    Quiz(
      text: "앉다",
      options: [
        Option(text: "立つ", isCorrect: false),
        Option(text: "座る", isCorrect: true),
        Option(text: "走る", isCorrect: false),
        Option(text: "泳ぐ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "내리다",
      options: [
        Option(text: "乗る", isCorrect: false),
        Option(text: "降りる", isCorrect: true),
        Option(text: "飛ぶ", isCorrect: false),
        Option(text: "泳ぐ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "자르다",
      options: [
        Option(text: "切る", isCorrect: true),
        Option(text: "貼る", isCorrect: false),
        Option(text: "食べる", isCorrect: false),
        Option(text: "話す", isCorrect: false),
      ],
    ),
    Quiz(
      text: "증발하다",
      options: [
        Option(text: "焼く", isCorrect: false),
        Option(text: "蒸す", isCorrect: true),
        Option(text: "炒める", isCorrect: false),
        Option(text: "煮る", isCorrect: false),
      ],
    ),
    Quiz(
      text: "운전하다",
      options: [
        Option(text: "乗る", isCorrect: false),
        Option(text: "運転する", isCorrect: true),
        Option(text: "내리다", isCorrect: false),
        Option(text: "泳ぐ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "축하하다",
      options: [
        Option(text: "祝う", isCorrect: true),
        Option(text: "感謝する", isCorrect: false),
        Option(text: "謝る", isCorrect: false),
        Option(text: "答える", isCorrect: false),
      ],
    ),
    Quiz(
      text: "시작하다",
      options: [
        Option(text: "始める", isCorrect: true),
        Option(text: "終わる", isCorrect: false),
        Option(text: "食べる", isCorrect: false),
        Option(text: "話す", isCorrect: false),
      ],
    ),
    Quiz(
      text: "결혼하다",
      options: [
        Option(text: "結婚する", isCorrect: true),
        Option(text: "別れる", isCorrect: false),
        Option(text: "謝る", isCorrect: false),
        Option(text: "答える", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사과하다",
      options: [
        Option(text: "謝る", isCorrect: true),
        Option(text: "許す", isCorrect: false),
        Option(text: "祝う", isCorrect: false),
        Option(text: "答える", isCorrect: false),
      ],
    ),
    Quiz(
      text: "대답하다",
      options: [
        Option(text: "聞く", isCorrect: false),
        Option(text: "話す", isCorrect: false),
        Option(text: "答える", isCorrect: true),
        Option(text: "思う", isCorrect: false),
      ],
    ),
    Quiz(
      text: "약속하다",
      options: [
        Option(text: "約束する", isCorrect: true),
        Option(text: "忘れる", isCorrect: false),
        Option(text: "謝る", isCorrect: false),
        Option(text: "答える", isCorrect: false),
      ],
    ),
    Quiz(
      text: "걱정하다",
      options: [
        Option(text: "心配する", isCorrect: true),
        Option(text: "安心する", isCorrect: false),
        Option(text: "謝る", isCorrect: false),
        Option(text: "答える", isCorrect: false),
      ],
    ),
    Quiz(
      text: "준비하다",
      options: [
        Option(text: "準備する", isCorrect: true),
        Option(text: "終わる", isCorrect: false),
        Option(text: "謝る", isCorrect: false),
        Option(text: "答える", isCorrect: false),
      ],
    ),
    Quiz(
      text: "전화하다",
      options: [
        Option(text: "電話する", isCorrect: true),
        Option(text: "話す", isCorrect: false),
        Option(text: "答える", isCorrect: false),
        Option(text: "思う", isCorrect: false),
      ],
    ),
    Quiz(
      text: "운동하다",
      options: [
        Option(text: "運動する", isCorrect: true),
        Option(text: "遊ぶ", isCorrect: false),
        Option(text: "食べる", isCorrect: false),
        Option(text: "飲む", isCorrect: false),
      ],
    ),
    Quiz(
      text: "산책하다",
      options: [
        Option(text: "散歩する", isCorrect: true),
        Option(text: "遊ぶ", isCorrect: false),
        Option(text: "泣く", isCorrect: false),
        Option(text: "死ぬ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "세탁하다",
      options: [
        Option(text: "洗濯する", isCorrect: true),
        Option(text: "遊ぶ", isCorrect: false),
        Option(text: "食べる", isCorrect: false),
        Option(text: "飲む", isCorrect: false),
      ],
    ),
    Quiz(
      text: "요리하다",
      options: [
        Option(text: "料理する", isCorrect: true),
        Option(text: "食べる", isCorrect: false),
        Option(text: "作る", isCorrect: false),
        Option(text: "熟す", isCorrect: false),
      ],
    ),
    Quiz(
      text: "청소하다",
      options: [
        Option(text: "掃除する", isCorrect: true),
        Option(text: "遊ぶ", isCorrect: false),
        Option(text: "食べる", isCorrect: false),
        Option(text: "走る", isCorrect: false),
      ],
    ),
    Quiz(
      text: "일하다",
      options: [
        Option(text: "働く", isCorrect: true),
        Option(text: "休む", isCorrect: false),
        Option(text: "労働する", isCorrect: false),
        Option(text: "起きる", isCorrect: false),
      ],
    ),
    Quiz(
      text: "느끼다",
      options: [
        Option(text: "感じる", isCorrect: true),
        Option(text: "考える", isCorrect: false),
        Option(text: "信じる", isCorrect: false),
        Option(text: "話す", isCorrect: false),
      ],
    ),
    Quiz(
      text: "낚시하다",
      options: [
        Option(text: "釣りをする", isCorrect: true),
        Option(text: "つかむ", isCorrect: false),
        Option(text: "つかむ", isCorrect: false),
        Option(text: "引く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "눕다",
      options: [
        Option(text: "横になる", isCorrect: true),
        Option(text: "座る", isCorrect: false),
        Option(text: "起きる", isCorrect: false),
        Option(text: "跳ぶ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "구우다",
      options: [
        Option(text: "焼く", isCorrect: true),
        Option(text: "茹でる", isCorrect: false),
        Option(text: "炒める", isCorrect: false),
        Option(text: "煙を出す", isCorrect: false),
      ],
    ),
    Quiz(
      text: "도와주다",
      options: [
        Option(text: "手伝う", isCorrect: true),
        Option(text: "助ける", isCorrect: false),
        Option(text: "世話をする", isCorrect: false),
        Option(text: "負担する", isCorrect: false),
      ],
    ),
    Quiz(
      text: "잡다",
      options: [
        Option(text: "掴む", isCorrect: true),
        Option(text: "持ってくる", isCorrect: false),
        Option(text: "つかむ", isCorrect: false),
        Option(text: "失う", isCorrect: false),
      ],
    ),
    Quiz(
      text: "들다",
      options: [
        Option(text: "持つ", isCorrect: true),
        Option(text: "耳を傾ける", isCorrect: false),
        Option(text: "聞く", isCorrect: false),
        Option(text: "知る", isCorrect: false),
      ],
    ),
    Quiz(
      text: "물어보다",
      options: [
        Option(text: "尋ねる", isCorrect: true),
        Option(text: "尋ねる", isCorrect: false),
        Option(text: "答える", isCorrect: false),
        Option(text: "話す", isCorrect: false),
      ],
    ),
    Quiz(
      text: "지우다",
      options: [
        Option(text: "消す", isCorrect: true),
        Option(text: "捨てる", isCorrect: false),
        Option(text: "書く", isCorrect: false),
        Option(text: "借りる", isCorrect: false),
      ],
    ),
    Quiz(
      text: "화나다",
      options: [
        Option(text: "怒る", isCorrect: true),
        Option(text: "腹を立てる", isCorrect: false),
        Option(text: "悲しむ", isCorrect: false),
        Option(text: "当惑する", isCorrect: false),
      ],
    ),
    Quiz(
      text: "내리다",
      options: [
        Option(text: "下げる", isCorrect: true),
        Option(text: "上がる", isCorrect: false),
        Option(text: "降ろす", isCorrect: false),
        Option(text: "取り下げる", isCorrect: false),
      ],
    ),
    Quiz(
      text: "말리다",
      options: [
        Option(text: "干す", isCorrect: true),
        Option(text: "濡らす", isCorrect: false),
        Option(text: "乾燥させる", isCorrect: false),
        Option(text: "乾かす", isCorrect: false),
      ],
    ),
    Quiz(
      text: "들다",
      options: [
        Option(text: "持つ", isCorrect: true),
        Option(text: "聞く", isCorrect: false),
        Option(text: "運ぶ", isCorrect: false),
        Option(text: "受け取る", isCorrect: false),
      ],
    ),
    Quiz(
      text: "살다",
      options: [
        Option(text: "住む", isCorrect: true),
        Option(text: "生き返る", isCorrect: false),
        Option(text: "調べる", isCorrect: false),
        Option(text: "家事をする", isCorrect: false),
      ],
    ),
    Quiz(
      text: "걸다",
      options: [
        Option(text: "掛ける", isCorrect: true),
        Option(text: "捕まえる", isCorrect: false),
        Option(text: "走る", isCorrect: false),
        Option(text: "飛ぶ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "울다",
      options: [
        Option(text: "泣く", isCorrect: true),
        Option(text: "泣かせる", isCorrect: false),
        Option(text: "泣く", isCorrect: false),
        Option(text: "泣き叫ぶ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "누르다",
      options: [
        Option(text: "押す", isCorrect: true),
        Option(text: "押し付ける", isCorrect: false),
        Option(text: "押す", isCorrect: false),
        Option(text: "押す", isCorrect: false),
      ],
    ),
    Quiz(
      text: "불다",
      options: [
        Option(text: "吹く", isCorrect: true),
        Option(text: "炊く", isCorrect: false),
        Option(text: "焼く", isCorrect: false),
        Option(text: "擦る", isCorrect: false),
      ],
    ),
    Quiz(
      text: "웃다",
      options: [
        Option(text: "笑う", isCorrect: true),
        Option(text: "웃기다", isCorrect: false),
        Option(text: "웃다", isCorrect: false),
        Option(text: "웃음소리를 내다", isCorrect: false),
      ],
    ),
    Quiz(
      text: "찍다",
      options: [
        Option(text: "撮る", isCorrect: true),
        Option(text: "찍다", isCorrect: false),
        Option(text: "찍어내다", isCorrect: false),
        Option(text: "찍어놓다", isCorrect: false),
      ],
    ),
    Quiz(
      text: "올리다",
      options: [
        Option(text: "上げる", isCorrect: true),
        Option(text: "내리다", isCorrect: false),
        Option(text: "ひっくり返す", isCorrect: false),
        Option(text: "持ち上げる", isCorrect: false),
      ],
    ),
    Quiz(
      text: "배우다",
      options: [
        Option(text: "習う", isCorrect: true),
        Option(text: "教える", isCorrect: false),
        Option(text: "学ぶ", isCorrect: false),
        Option(text: "勉強する", isCorrect: false),
      ],
    ),
    Quiz(
      text: "벗다",
      options: [
        Option(text: "脱ぐ", isCorrect: true),
        Option(text: "着る", isCorrect: false),
        Option(text: "脱げる", isCorrect: false),
        Option(text: "着せる", isCorrect: false),
      ],
    ),
    Quiz(
      text: "신다",
      options: [
        Option(text: "履く", isCorrect: true),
        Option(text: "はく", isCorrect: false),
        Option(text: "はこう", isCorrect: false),
        Option(text: "はいている", isCorrect: false),
      ],
    ),
    Quiz(
      text: "토하다",
      options: [
        Option(text: "吐く", isCorrect: true),
        Option(text: "食べる", isCorrect: false),
        Option(text: "飲む", isCorrect: false),
        Option(text: "出す", isCorrect: false),
      ],
    ),
    Quiz(
      text: "받다",
      options: [
        Option(text: "もらう", isCorrect: true),
        Option(text: "あげる", isCorrect: false),
        Option(text: "くれる", isCorrect: false),
        Option(text: "与える", isCorrect: false),
      ],
    ),
    Quiz(
      text: "씹다",
      options: [
        Option(text: "噛む", isCorrect: true),
        Option(text: "食べる", isCorrect: false),
        Option(text: "吸う", isCorrect: false),
        Option(text: "なめる", isCorrect: false),
      ],
    ),
    Quiz(
      text: "잊다",
      options: [
        Option(text: "忘れる", isCorrect: true),
        Option(text: "覚える", isCorrect: false),
        Option(text: "思い出す", isCorrect: false),
        Option(text: "覚えている", isCorrect: false),
      ],
    ),
    Quiz(
      text: "버리다",
      options: [
        Option(text: "捨てる", isCorrect: true),
        Option(text: "持つ", isCorrect: false),
        Option(text: "取る", isCorrect: false),
        Option(text: "置く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "당기다",
      options: [
        Option(text: "引く", isCorrect: true),
        Option(text: "押す", isCorrect: false),
        Option(text: "抜く", isCorrect: false),
        Option(text: "折る", isCorrect: false),
      ],
    ),
    Quiz(
      text: "깔다",
      options: [
        Option(text: "敷く", isCorrect: true),
        Option(text: "置く", isCorrect: false),
        Option(text: "たたむ", isCorrect: false),
        Option(text: "座る", isCorrect: false),
      ],
    ),
    Quiz(
      text: "즐기다",
      options: [
        Option(text: "楽しむ", isCorrect: true),
        Option(text: "喜ぶ", isCorrect: false),
        Option(text: "笑う", isCorrect: false),
        Option(text: "遊ぶ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "이기다",
      options: [
        Option(text: "勝つ", isCorrect: true),
        Option(text: "負ける", isCorrect: false),
        Option(text: "競う", isCorrect: false),
        Option(text: "勝ち負けする", isCorrect: false),
      ],
    ),
    Quiz(
      text: "지다",
      options: [
        Option(text: "負ける", isCorrect: true),
        Option(text: "勝つ", isCorrect: false),
        Option(text: "敗北する", isCorrect: false),
        Option(text: "競う", isCorrect: false),
      ],
    ),
    Quiz(
      text: "나가다",
      options: [
        Option(text: "出る", isCorrect: true),
        Option(text: "入る", isCorrect: false),
        Option(text: "開く", isCorrect: false),
        Option(text: "閉じる", isCorrect: false),
      ],
    ),
    Quiz(
      text: "들어가다",
      options: [
        Option(text: "入る", isCorrect: true),
        Option(text: "出る", isCorrect: false),
        Option(text: "開く", isCorrect: false),
        Option(text: "閉じる", isCorrect: false),
      ],
    ),
    Quiz(
      text: "태어나다",
      options: [
        Option(text: "生まれる", isCorrect: true),
        Option(text: "生きる", isCorrect: false),
        Option(text: "生む", isCorrect: false),
        Option(text: "生やす", isCorrect: false),
      ],
    ),
  ];

  /////////////  名詞　　/////////////////////
  static final List<Quiz> korianBiginnerNouns = [
    Quiz(
      text: "사람",
      options: [
        Option(text: "星", isCorrect: false),
        Option(text: "人間", isCorrect: true),
        Option(text: "動物", isCorrect: false),
        Option(text: "植物", isCorrect: false),
      ],
    ),
    Quiz(
      text: "우리",
      options: [
        Option(text: "彼ら", isCorrect: false),
        Option(text: "彼女", isCorrect: false),
        Option(text: "私たち", isCorrect: true),
        Option(text: "あなた", isCorrect: false),
      ],
    ),
    Quiz(
      text: "하늘",
      options: [
        Option(text: "大地", isCorrect: false),
        Option(text: "山", isCorrect: false),
        Option(text: "空", isCorrect: true),
        Option(text: "海", isCorrect: false),
      ],
    ),
    Quiz(
      text: "나무",
      options: [
        Option(text: "木", isCorrect: true),
        Option(text: "花", isCorrect: false),
        Option(text: "葉", isCorrect: false),
        Option(text: "果物", isCorrect: false),
      ],
    ),
    Quiz(
      text: "바나나",
      options: [
        Option(text: "りんご", isCorrect: false),
        Option(text: "ぶどう", isCorrect: false),
        Option(text: "バナナ", isCorrect: true),
        Option(text: "オレンジ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "포도",
      options: [
        Option(text: "りんご", isCorrect: false),
        Option(text: "バナナ", isCorrect: false),
        Option(text: "ぶどう", isCorrect: true),
        Option(text: "オレンジ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "문화",
      options: [
        Option(text: "科学", isCorrect: false),
        Option(text: "芸術", isCorrect: false),
        Option(text: "歴史", isCorrect: false),
        Option(text: "文化", isCorrect: true),
      ],
    ),
    Quiz(
      text: "가방",
      options: [
        Option(text: "かばん", isCorrect: true),
        Option(text: "帽子", isCorrect: false),
        Option(text: "靴", isCorrect: false),
        Option(text: "コート", isCorrect: false),
      ],
    ),
    Quiz(
      text: "학교",
      options: [
        Option(text: "図書館", isCorrect: false),
        Option(text: "病院", isCorrect: false),
        Option(text: "学校", isCorrect: true),
        Option(text: "銀行", isCorrect: false),
      ],
    ),
    Quiz(
      text: "연필",
      options: [
        Option(text: "鉛筆", isCorrect: true),
        Option(text: "ペン", isCorrect: false),
        Option(text: "ノート", isCorrect: false),
        Option(text: "机", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가수",
      options: [
        Option(text: "俳優", isCorrect: false),
        Option(text: "作家", isCorrect: false),
        Option(text: "歌手", isCorrect: true),
        Option(text: "画家", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사진",
      options: [
        Option(text: "絵", isCorrect: false),
        Option(text: "彫刻", isCorrect: false),
        Option(text: "写真", isCorrect: true),
        Option(text: "映画", isCorrect: false),
      ],
    ),
    Quiz(
      text: "목요일",
      options: [
        Option(text: "木曜日", isCorrect: true),
        Option(text: "火曜日", isCorrect: false),
        Option(text: "水曜日", isCorrect: false),
        Option(text: "金曜日", isCorrect: false),
      ],
    ),
    Quiz(
      text: "토요일",
      options: [
        Option(text: "日曜日", isCorrect: false),
        Option(text: "月曜日", isCorrect: false),
        Option(text: "水曜日", isCorrect: false),
        Option(text: "土曜日", isCorrect: true),
      ],
    ),
    Quiz(
      text: "지난주",
      options: [
        Option(text: "今週", isCorrect: false),
        Option(text: "来週", isCorrect: false),
        Option(text: "再来週", isCorrect: false),
        Option(text: "先週", isCorrect: true),
      ],
    ),
    Quiz(
      text: "커피",
      options: [
        Option(text: "コーヒー", isCorrect: true),
        Option(text: "紅茶", isCorrect: false),
        Option(text: "お茶", isCorrect: false),
        Option(text: "牛乳", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가구",
      options: [
        Option(text: "食器", isCorrect: false),
        Option(text: "寝具", isCorrect: false),
        Option(text: "家具", isCorrect: true),
        Option(text: "洗濯物", isCorrect: false),
      ],
    ),
    Quiz(
      text: "옷",
      options: [
        Option(text: "帽子", isCorrect: false),
        Option(text: "靴", isCorrect: false),
        Option(text: "バッグ", isCorrect: false),
        Option(text: "服", isCorrect: true),
      ],
    ),
    Quiz(
      text: "숟가락",
      options: [
        Option(text: "ナイフ", isCorrect: false),
        Option(text: "フォーク", isCorrect: false),
        Option(text: "お皿", isCorrect: false),
        Option(text: "スプーン", isCorrect: true),
      ],
    ),
    Quiz(
      text: "편지",
      options: [
        Option(text: "雑誌", isCorrect: false),
        Option(text: "新聞", isCorrect: false),
        Option(text: "本", isCorrect: false),
        Option(text: "手紙", isCorrect: true),
      ],
    ),
    Quiz(
      text: "컴퓨터",
      options: [
        Option(text: "コンピュータ", isCorrect: true),
        Option(text: "テレビ", isCorrect: false),
        Option(text: "携帯電話", isCorrect: false),
        Option(text: "冷蔵庫", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사물",
      options: [
        Option(text: "場所", isCorrect: false),
        Option(text: "時間", isCorrect: false),
        Option(text: "人", isCorrect: false),
        Option(text: "事物", isCorrect: true),
      ],
    ),
    Quiz(
      text: "별",
      options: [
        Option(text: "星", isCorrect: true),
        Option(text: "月", isCorrect: false),
        Option(text: "太陽", isCorrect: false),
        Option(text: "宇宙", isCorrect: false),
      ],
    ),
    Quiz(
      text: "달",
      options: [
        Option(text: "月", isCorrect: true),
        Option(text: "太陽", isCorrect: false),
        Option(text: "星", isCorrect: false),
        Option(text: "宇宙", isCorrect: false),
      ],
    ),
    Quiz(
      text: "병원",
      options: [
        Option(text: "学校", isCorrect: false),
        Option(text: "銀行", isCorrect: false),
        Option(text: "病院", isCorrect: true),
        Option(text: "レストラン", isCorrect: false),
      ],
    ),
    Quiz(
      text: "카메라",
      options: [
        Option(text: "スマートフォン", isCorrect: false),
        Option(text: "テレビ", isCorrect: false),
        Option(text: "コンピュータ", isCorrect: false),
        Option(text: "カメラ", isCorrect: true),
      ],
    ),
    Quiz(
      text: "도서관",
      options: [
        Option(text: "学校", isCorrect: false),
        Option(text: "病院", isCorrect: false),
        Option(text: "銀行", isCorrect: false),
        Option(text: "図書館", isCorrect: true),
      ],
    ),
    Quiz(
      text: "음식",
      options: [
        Option(text: "調味", isCorrect: false),
        Option(text: "料理", isCorrect: false),
        Option(text: "野菜", isCorrect: false),
        Option(text: "食べ物", isCorrect: true),
      ],
    ),
    Quiz(
      text: "핸드폰",
      options: [
        Option(text: "テレビ", isCorrect: false),
        Option(text: "コンピュータ", isCorrect: false),
        Option(text: "携帯電話", isCorrect: true),
        Option(text: "ラジオ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "테이블",
      options: [
        Option(text: "椅子", isCorrect: false),
        Option(text: "ベッド", isCorrect: false),
        Option(text: "ソファ", isCorrect: false),
        Option(text: "テーブル", isCorrect: true),
      ],
    ),
    Quiz(
      text: "이야기",
      options: [
        Option(text: "本", isCorrect: false),
        Option(text: "映画", isCorrect: false),
        Option(text: "話", isCorrect: true),
        Option(text: "音楽", isCorrect: false),
      ],
    ),
    Quiz(
      text: "과일",
      options: [
        Option(text: "野菜", isCorrect: false),
        Option(text: "肉", isCorrect: false),
        Option(text: "魚", isCorrect: false),
        Option(text: "果物", isCorrect: true),
      ],
    ),
    Quiz(
      text: "컵",
      options: [
        Option(text: "お皿", isCorrect: false),
        Option(text: "ナイフ", isCorrect: false),
        Option(text: "カップ", isCorrect: true),
        Option(text: "フォーク", isCorrect: false),
      ],
    ),
    Quiz(
      text: "얼굴",
      options: [
        Option(text: "顔", isCorrect: true),
        Option(text: "頭", isCorrect: false),
        Option(text: "手", isCorrect: false),
        Option(text: "足", isCorrect: false),
      ],
    ),
    Quiz(
      text: "매일",
      options: [
        Option(text: "週末", isCorrect: false),
        Option(text: "月曜日", isCorrect: false),
        Option(text: "毎日", isCorrect: true),
        Option(text: "年間", isCorrect: false),
      ],
    ),
    Quiz(
      text: "물",
      options: [
        Option(text: "お茶", isCorrect: false),
        Option(text: "牛乳", isCorrect: false),
        Option(text: "水", isCorrect: true),
        Option(text: "ジュース", isCorrect: false),
      ],
    ),
    Quiz(
      text: "우유",
      options: [
        Option(text: "コーヒー", isCorrect: false),
        Option(text: "紅茶", isCorrect: false),
        Option(text: "お茶", isCorrect: false),
        Option(text: "牛乳", isCorrect: true),
      ],
    ),
    Quiz(
      text: "지하철",
      options: [
        Option(text: "地下鉄", isCorrect: true),
        Option(text: "バス", isCorrect: false),
        Option(text: "電車", isCorrect: false),
        Option(text: "タクシー", isCorrect: false),
      ],
    ),
    Quiz(
      text: "자전거",
      options: [
        Option(text: "車", isCorrect: false),
        Option(text: "自転車", isCorrect: true),
        Option(text: "バス", isCorrect: false),
        Option(text: "電車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사랑",
      options: [
        Option(text: "友情", isCorrect: false),
        Option(text: "結婚", isCorrect: false),
        Option(text: "愛", isCorrect: true),
        Option(text: "家族", isCorrect: false),
      ],
    ),
    Quiz(
      text: "눈",
      options: [
        Option(text: "雪", isCorrect: true),
        Option(text: "花", isCorrect: false),
        Option(text: "氷", isCorrect: false),
        Option(text: "水", isCorrect: false),
      ],
    ),
    Quiz(
      text: "꽃",
      options: [
        Option(text: "草", isCorrect: false),
        Option(text: "木", isCorrect: false),
        Option(text: "葉", isCorrect: false),
        Option(text: "花", isCorrect: true),
      ],
    ),
    Quiz(
      text: "모자",
      options: [
        Option(text: "帽子", isCorrect: true),
        Option(text: "靴", isCorrect: false),
        Option(text: "服", isCorrect: false),
        Option(text: "バッグ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "교실",
      options: [
        Option(text: "図書館", isCorrect: false),
        Option(text: "校庭", isCorrect: false),
        Option(text: "事務室", isCorrect: false),
        Option(text: "教室", isCorrect: true),
      ],
    ),
    Quiz(
      text: "방",
      options: [
        Option(text: "部屋", isCorrect: true),
        Option(text: "廊下", isCorrect: false),
        Option(text: "玄関", isCorrect: false),
        Option(text: "台所", isCorrect: false),
      ],
    ),
    Quiz(
      text: "어머니",
      options: [
        Option(text: "父", isCorrect: false),
        Option(text: "姉", isCorrect: false),
        Option(text: "母", isCorrect: true),
        Option(text: "兄", isCorrect: false),
      ],
    ),
    Quiz(
      text: "아버지",
      options: [
        Option(text: "父", isCorrect: true),
        Option(text: "母", isCorrect: false),
        Option(text: "兄", isCorrect: false),
        Option(text: "姉", isCorrect: false),
      ],
    ),
    Quiz(
      text: "펜",
      options: [
        Option(text: "ペン", isCorrect: true),
        Option(text: "下敷き", isCorrect: false),
        Option(text: "消しゴム", isCorrect: false),
        Option(text: "定規", isCorrect: false),
      ],
    ),
    Quiz(
      text: "손",
      options: [
        Option(text: "足", isCorrect: false),
        Option(text: "腕", isCorrect: false),
        Option(text: "頭", isCorrect: false),
        Option(text: "手", isCorrect: true),
      ],
    ),
    Quiz(
      text: "손가락",
      options: [
        Option(text: "指", isCorrect: true),
        Option(text: "手", isCorrect: false),
        Option(text: "足", isCorrect: false),
        Option(text: "耳", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사실",
      options: [
        Option(text: "事実", isCorrect: true),
        Option(text: "真実", isCorrect: false),
        Option(text: "意見", isCorrect: false),
        Option(text: "感情", isCorrect: false),
      ],
    ),
    Quiz(
      text: "꿈",
      options: [
        Option(text: "夢", isCorrect: true),
        Option(text: "現実", isCorrect: false),
        Option(text: "思い出", isCorrect: false),
        Option(text: "目標", isCorrect: false),
      ],
    ),
    Quiz(
      text: "학생",
      options: [
        Option(text: "先生", isCorrect: false),
        Option(text: "医者", isCorrect: false),
        Option(text: "学生", isCorrect: true),
        Option(text: "弁護士", isCorrect: false),
      ],
    ),
    Quiz(
      text: "새",
      options: [
        Option(text: "鳥", isCorrect: true),
        Option(text: "猫", isCorrect: false),
        Option(text: "犬", isCorrect: false),
        Option(text: "魚", isCorrect: false),
      ],
    ),
    Quiz(
      text: "키",
      options: [
        Option(text: "身長", isCorrect: true),
        Option(text: "体重", isCorrect: false),
        Option(text: "年齢", isCorrect: false),
        Option(text: "顔", isCorrect: false),
      ],
    ),
    Quiz(
      text: "머리",
      options: [
        Option(text: "頭", isCorrect: true),
        Option(text: "顔", isCorrect: false),
        Option(text: "首", isCorrect: false),
        Option(text: "目", isCorrect: false),
      ],
    ),
    Quiz(
      text: "발견",
      options: [
        Option(text: "発見", isCorrect: true),
        Option(text: "見つける", isCorrect: false),
        Option(text: "探す", isCorrect: false),
        Option(text: "失くす", isCorrect: false),
      ],
    ),
    Quiz(
      text: "기억",
      options: [
        Option(text: "記憶", isCorrect: true),
        Option(text: "忘れる", isCorrect: false),
        Option(text: "思い出す", isCorrect: false),
        Option(text: "覚える", isCorrect: false),
      ],
    ),
    Quiz(
      text: "소리",
      options: [
        Option(text: "音", isCorrect: true),
        Option(text: "におい", isCorrect: false),
        Option(text: "歌", isCorrect: false),
        Option(text: "音楽", isCorrect: false),
      ],
    ),
    Quiz(
      text: "길",
      options: [
        Option(text: "道", isCorrect: true),
        Option(text: "川", isCorrect: false),
        Option(text: "山", isCorrect: false),
        Option(text: "森", isCorrect: false),
      ],
    ),
    Quiz(
      text: "지도",
      options: [
        Option(text: "地図", isCorrect: true),
        Option(text: "本", isCorrect: false),
        Option(text: "写真", isCorrect: false),
        Option(text: "記事", isCorrect: false),
      ],
    ),
    Quiz(
      text: "강아지",
      options: [
        Option(text: "猫", isCorrect: false),
        Option(text: "子犬", isCorrect: true),
        Option(text: "鳥", isCorrect: false),
        Option(text: "魚", isCorrect: false),
      ],
    ),
    Quiz(
      text: "바다",
      options: [
        Option(text: "湖", isCorrect: false),
        Option(text: "川", isCorrect: false),
        Option(text: "海", isCorrect: true),
        Option(text: "池", isCorrect: false),
      ],
    ),
    Quiz(
      text: "눈물",
      options: [
        Option(text: "血", isCorrect: false),
        Option(text: "汗", isCorrect: false),
        Option(text: "唾", isCorrect: false),
        Option(text: "涙", isCorrect: true),
      ],
    ),
    Quiz(
      text: "밥",
      options: [
        Option(text: "ご飯", isCorrect: true),
        Option(text: "肉", isCorrect: false),
        Option(text: "野菜", isCorrect: false),
        Option(text: "魚", isCorrect: false),
      ],
    ),
    Quiz(
      text: "친구",
      options: [
        Option(text: "家族", isCorrect: false),
        Option(text: "同僚", isCorrect: false),
        Option(text: "友達", isCorrect: true),
        Option(text: "先生", isCorrect: false),
      ],
    ),
    Quiz(
      text: "생일",
      options: [
        Option(text: "クリスマス", isCorrect: false),
        Option(text: "年末", isCorrect: false),
        Option(text: "誕生日", isCorrect: true),
        Option(text: "お正月", isCorrect: false),
      ],
    ),
    Quiz(
      text: "거울",
      options: [
        Option(text: "窓", isCorrect: false),
        Option(text: "ドア", isCorrect: false),
        Option(text: "鏡", isCorrect: true),
        Option(text: "テーブル", isCorrect: false),
      ],
    ),
    Quiz(
      text: "자동차",
      options: [
        Option(text: "自転車", isCorrect: false),
        Option(text: "バス", isCorrect: false),
        Option(text: "飛行機", isCorrect: false),
        Option(text: "車", isCorrect: true),
      ],
    ),
    Quiz(
      text: "우산",
      options: [
        Option(text: "コート", isCorrect: false),
        Option(text: "帽子", isCorrect: false),
        Option(text: "スカーフ", isCorrect: false),
        Option(text: "傘", isCorrect: true),
      ],
    ),
    Quiz(
      text: "실수",
      options: [
        Option(text: "成功", isCorrect: false),
        Option(text: "リトライ", isCorrect: false),
        Option(text: "試み", isCorrect: false),
        Option(text: "間違い", isCorrect: true),
      ],
    ),
    Quiz(
      text: "일",
      options: [
        Option(text: "休息", isCorrect: false),
        Option(text: "勉強", isCorrect: false),
        Option(text: "仕事", isCorrect: true),
        Option(text: "遊び", isCorrect: false),
      ],
    ),
    Quiz(
      text: "추억",
      options: [
        Option(text: "思い出", isCorrect: true),
        Option(text: "未来", isCorrect: false),
        Option(text: "出来事", isCorrect: false),
        Option(text: "現在", isCorrect: false),
      ],
    ),
    Quiz(
      text: "평소",
      options: [
        Option(text: "今日", isCorrect: false),
        Option(text: "昨日", isCorrect: false),
        Option(text: "明日", isCorrect: false),
        Option(text: "普段", isCorrect: true),
      ],
    ),
    Quiz(
      text: "전화",
      options: [
        Option(text: "メール", isCorrect: false),
        Option(text: "手紙", isCorrect: false),
        Option(text: "電話", isCorrect: true),
        Option(text: "FAX", isCorrect: false),
      ],
    ),
    Quiz(
      text: "기쁨",
      options: [
        Option(text: "悲しみ", isCorrect: false),
        Option(text: "驚き", isCorrect: false),
        Option(text: "怒り", isCorrect: false),
        Option(text: "喜び", isCorrect: true),
      ],
    ),
    Quiz(
      text: "추천",
      options: [
        Option(text: "評価", isCorrect: false),
        Option(text: "提案", isCorrect: false),
        Option(text: "要求", isCorrect: false),
        Option(text: "推薦", isCorrect: true),
      ],
    ),
    Quiz(
      text: "여행",
      options: [
        Option(text: "旅行", isCorrect: true),
        Option(text: "休暇", isCorrect: false),
        Option(text: "出張", isCorrect: false),
        Option(text: "遠足", isCorrect: false),
      ],
    ),
    Quiz(
      text: "외국",
      options: [
        Option(text: "国内", isCorrect: false),
        Option(text: "国境", isCorrect: false),
        Option(text: "外国", isCorrect: true),
        Option(text: "自国", isCorrect: false),
      ],
    ),
    Quiz(
      text: "관심",
      options: [
        Option(text: "興味", isCorrect: false),
        Option(text: "注意", isCorrect: false),
        Option(text: "関心", isCorrect: true),
        Option(text: "集中", isCorrect: false),
      ],
    ),
    Quiz(
      text: "신문",
      options: [
        Option(text: "雑誌", isCorrect: false),
        Option(text: "書籍", isCorrect: false),
        Option(text: "広告", isCorrect: false),
        Option(text: "新聞", isCorrect: true),
      ],
    ),
    Quiz(
      text: "행복",
      options: [
        Option(text: "悲しみ", isCorrect: false),
        Option(text: "怒り", isCorrect: false),
        Option(text: "不安", isCorrect: false),
        Option(text: "幸せ", isCorrect: true),
      ],
    ),
    Quiz(
      text: "집중",
      options: [
        Option(text: "集中", isCorrect: true),
        Option(text: "分散", isCorrect: false),
        Option(text: "心配", isCorrect: false),
        Option(text: "疲れ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "이름",
      options: [
        Option(text: "夏", isCorrect: false),
        Option(text: "ニックネーム", isCorrect: false),
        Option(text: "称号", isCorrect: false),
        Option(text: "名前", isCorrect: true),
      ],
    ),
    Quiz(
      text: "회의",
      options: [
        Option(text: "会議", isCorrect: true),
        Option(text: "干渉", isCorrect: false),
        Option(text: "同窓会", isCorrect: false),
        Option(text: "相談", isCorrect: false),
      ],
    ),
    Quiz(
      text: "공부",
      options: [
        Option(text: "研究", isCorrect: false),
        Option(text: "実践", isCorrect: false),
        Option(text: "練習", isCorrect: false),
        Option(text: "勉強", isCorrect: true),
      ],
    ),
    Quiz(
      text: "가격",
      options: [
        Option(text: "価格", isCorrect: true),
        Option(text: "負担", isCorrect: false),
        Option(text: "費用", isCorrect: false),
        Option(text: "コスト", isCorrect: false),
      ],
    ),
    Quiz(
      text: "휴가",
      options: [
        Option(text: "休暇", isCorrect: true),
        Option(text: "祝日", isCorrect: false),
        Option(text: "明日", isCorrect: false),
        Option(text: "正月", isCorrect: false),
      ],
    ),
    Quiz(
      text: "계절",
      options: [
        Option(text: "季節", isCorrect: true),
        Option(text: "天気", isCorrect: false),
        Option(text: "気候", isCorrect: false),
        Option(text: "季風", isCorrect: false),
      ],
    ),
    Quiz(
      text: "일요일",
      options: [
        Option(text: "日曜日", isCorrect: true),
        Option(text: "月曜日", isCorrect: false),
        Option(text: "火曜日", isCorrect: false),
        Option(text: "水曜日", isCorrect: false),
      ],
    ),
    Quiz(
      text: "방학",
      options: [
        Option(text: "冬休み", isCorrect: false),
        Option(text: "春休み", isCorrect: false),
        Option(text: "欠席", isCorrect: false),
        Option(text: "長期休暇", isCorrect: true),
      ],
    ),
    Quiz(
      text: "여름",
      options: [
        Option(text: "冬", isCorrect: false),
        Option(text: "春", isCorrect: false),
        Option(text: "夏", isCorrect: true),
        Option(text: "秋", isCorrect: false),
      ],
    ),
    Quiz(
      text: "산책",
      options: [
        Option(text: "ジョギング", isCorrect: false),
        Option(text: "ランニング", isCorrect: false),
        Option(text: "休憩", isCorrect: false),
        Option(text: "散歩", isCorrect: true),
      ],
    ),
    Quiz(
      text: "이중",
      options: [
        Option(text: "一重", isCorrect: false),
        Option(text: "二重", isCorrect: true),
        Option(text: "三重", isCorrect: false),
        Option(text: "重ねる", isCorrect: false),
      ],
    ),
    Quiz(
      text: "손수건",
      options: [
        Option(text: "タオル", isCorrect: false),
        Option(text: "シャツ", isCorrect: false),
        Option(text: "ハンカチ", isCorrect: true),
        Option(text: "ズボン", isCorrect: false),
      ],
    ),
    Quiz(
      text: "다리",
      options: [
        Option(text: "脚", isCorrect: true),
        Option(text: "筋肉", isCorrect: false),
        Option(text: "手", isCorrect: false),
        Option(text: "腕", isCorrect: false),
      ],
    ),
    Quiz(
      text: "남자",
      options: [
        Option(text: "女", isCorrect: false),
        Option(text: "子供", isCorrect: false),
        Option(text: "男", isCorrect: true),
        Option(text: "おじさん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "여자",
      options: [
        Option(text: "男", isCorrect: false),
        Option(text: "子供", isCorrect: false),
        Option(text: "女", isCorrect: true),
        Option(text: "おばさん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "피아노",
      options: [
        Option(text: "ピアノ", isCorrect: true),
        Option(text: "ギター", isCorrect: false),
        Option(text: "バイオリン", isCorrect: false),
        Option(text: "トランペット", isCorrect: false),
      ],
    ),
    Quiz(
      text: "음악",
      options: [
        Option(text: "歌唱", isCorrect: false),
        Option(text: "楽器", isCorrect: false),
        Option(text: "音楽", isCorrect: true),
        Option(text: "演奏", isCorrect: false),
      ],
    ),
    Quiz(
      text: "미래",
      options: [
        Option(text: "未来", isCorrect: true),
        Option(text: "過去", isCorrect: false),
        Option(text: "現在", isCorrect: false),
        Option(text: "昔", isCorrect: false),
      ],
    ),
    Quiz(
      text: "방법",
      options: [
        Option(text: "手段", isCorrect: false),
        Option(text: "方法", isCorrect: true),
        Option(text: "往復", isCorrect: false),
        Option(text: "助け", isCorrect: false),
      ],
    ),
    Quiz(
      text: "국가",
      options: [
        Option(text: "政府", isCorrect: false),
        Option(text: "国土", isCorrect: false),
        Option(text: "国家", isCorrect: true),
        Option(text: "国民", isCorrect: false),
      ],
    ),
    Quiz(
      text: "전화번호",
      options: [
        Option(text: "住所", isCorrect: false),
        Option(text: "名前", isCorrect: false),
        Option(text: "電話番号", isCorrect: true),
        Option(text: "国", isCorrect: false),
      ],
    ),
    Quiz(
      text: "도착",
      options: [
        Option(text: "出発", isCorrect: false),
        Option(text: "遅延", isCorrect: false),
        Option(text: "到着", isCorrect: true),
        Option(text: "旅行", isCorrect: false),
      ],
    ),
    Quiz(
      text: "배우",
      options: [
        Option(text: "演歌歌手", isCorrect: false),
        Option(text: "歌手", isCorrect: false),
        Option(text: "俳優", isCorrect: true),
        Option(text: "ダンサー", isCorrect: false),
      ],
    ),
    Quiz(
      text: "운동화",
      options: [
        Option(text: "スニーカー", isCorrect: true),
        Option(text: "サンダル", isCorrect: false),
        Option(text: "靴", isCorrect: false),
        Option(text: "ブーツ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "샴푸",
      options: [
        Option(text: "シャンプー", isCorrect: true),
        Option(text: "リンス", isCorrect: false),
        Option(text: "石鹸", isCorrect: false),
        Option(text: "クリーム", isCorrect: false),
      ],
    ),
    Quiz(
      text: "목욕",
      options: [
        Option(text: "シャワー", isCorrect: false),
        Option(text: "トイレ", isCorrect: false),
        Option(text: "お風呂", isCorrect: true),
        Option(text: "洗面所", isCorrect: false),
      ],
    ),
    Quiz(
      text: "공원",
      options: [
        Option(text: "動物園", isCorrect: false),
        Option(text: "遊園地", isCorrect: false),
        Option(text: "公園", isCorrect: true),
        Option(text: "庭", isCorrect: false),
      ],
    ),
    Quiz(
      text: "선물",
      options: [
        Option(text: "作物", isCorrect: false),
        Option(text: "お中元", isCorrect: false),
        Option(text: "おもちゃ", isCorrect: false),
        Option(text: "プレゼント", isCorrect: true),
      ],
    ),
    Quiz(
      text: "소금",
      options: [
        Option(text: "砂糖", isCorrect: false),
        Option(text: "コショウ", isCorrect: false),
        Option(text: "塩", isCorrect: true),
        Option(text: "味噌", isCorrect: false),
      ],
    ),
    Quiz(
      text: "청소",
      options: [
        Option(text: "洗濯", isCorrect: false),
        Option(text: "料理", isCorrect: false),
        Option(text: "片付け", isCorrect: false),
        Option(text: "掃除", isCorrect: true),
      ],
    ),
    Quiz(
      text: "신발",
      options: [
        Option(text: "帽子", isCorrect: false),
        Option(text: "服", isCorrect: false),
        Option(text: "靴", isCorrect: true),
        Option(text: "ズボン", isCorrect: false),
      ],
    ),
    Quiz(
      text: "고양이",
      options: [
        Option(text: "犬", isCorrect: false),
        Option(text: "鳥", isCorrect: false),
        Option(text: "魚", isCorrect: false),
        Option(text: "猫", isCorrect: true),
      ],
    ),
    Quiz(
      text: "주말",
      options: [
        Option(text: "平日", isCorrect: false),
        Option(text: "月曜日", isCorrect: false),
        Option(text: "火曜日", isCorrect: false),
        Option(text: "週末", isCorrect: true),
      ],
    ),
    Quiz(
      text: "시장",
      options: [
        Option(text: "商店街", isCorrect: false),
        Option(text: "デパート", isCorrect: false),
        Option(text: "市場", isCorrect: true),
        Option(text: "スーパー", isCorrect: false),
      ],
    ),
    Quiz(
      text: "공책",
      options: [
        Option(text: "本", isCorrect: false),
        Option(text: "教科書", isCorrect: false),
        Option(text: "ノート", isCorrect: true),
        Option(text: "雑誌", isCorrect: false),
      ],
    ),
    Quiz(
      text: "신문지",
      options: [
        Option(text: "雑誌", isCorrect: false),
        Option(text: "ノート", isCorrect: false),
        Option(text: "新聞紙", isCorrect: true),
        Option(text: "本", isCorrect: false),
      ],
    ),
    Quiz(
      text: "침대",
      options: [
        Option(text: "ソファー", isCorrect: false),
        Option(text: "机", isCorrect: false),
        Option(text: "椅子", isCorrect: false),
        Option(text: "ベッド", isCorrect: true),
      ],
    ),
    Quiz(
      text: "계란",
      options: [
        Option(text: "鶏肉", isCorrect: false),
        Option(text: "豆腐", isCorrect: false),
        Option(text: "チーズ", isCorrect: false),
        Option(text: "卵", isCorrect: true),
      ],
    ),
    Quiz(
      text: "어린이",
      options: [
        Option(text: "大人", isCorrect: false),
        Option(text: "老人", isCorrect: false),
        Option(text: "子供", isCorrect: true),
        Option(text: "赤ちゃん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "닭",
      options: [
        Option(text: "鳥", isCorrect: false),
        Option(text: "魚", isCorrect: false),
        Option(text: "牛", isCorrect: false),
        Option(text: "鶏", isCorrect: true),
      ],
    ),
    Quiz(
      text: "돼지",
      options: [
        Option(text: "牛", isCorrect: false),
        Option(text: "羊", isCorrect: false),
        Option(text: "鶏", isCorrect: false),
        Option(text: "豚", isCorrect: true),
      ],
    ),
    Quiz(
      text: "물고기",
      options: [
        Option(text: "鳥", isCorrect: false),
        Option(text: "牛", isCorrect: false),
        Option(text: "魚", isCorrect: true),
        Option(text: "猫", isCorrect: false),
      ],
    ),
    Quiz(
      text: "감자",
      options: [
        Option(text: "人参", isCorrect: false),
        Option(text: "たまねぎ", isCorrect: false),
        Option(text: "じゃがいも", isCorrect: true),
        Option(text: "にんじん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "양파",
      options: [
        Option(text: "じゃがいも", isCorrect: false),
        Option(text: "にんじん", isCorrect: false),
        Option(text: "キャベツ", isCorrect: false),
        Option(text: "たまねぎ", isCorrect: true),
      ],
    ),
    Quiz(
      text: "당근",
      options: [
        Option(text: "じゃがいも", isCorrect: false),
        Option(text: "人参", isCorrect: true),
        Option(text: "たまねぎ", isCorrect: false),
        Option(text: "にんじん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "감기",
      options: [
        Option(text: "胃痛", isCorrect: false),
        Option(text: "頭痛", isCorrect: false),
        Option(text: "腹痛", isCorrect: false),
        Option(text: "風邪", isCorrect: true),
      ],
    ),
    Quiz(
      text: "주스",
      options: [
        Option(text: "ジュース", isCorrect: true),
        Option(text: "紅茶", isCorrect: false),
        Option(text: "コーヒー", isCorrect: false),
        Option(text: "ミルク", isCorrect: false),
      ],
    ),
    Quiz(
      text: "우체국",
      options: [
        Option(text: "郵便局", isCorrect: true),
        Option(text: "銀行", isCorrect: false),
        Option(text: "図書館", isCorrect: false),
        Option(text: "学校", isCorrect: false),
      ],
    ),
    Quiz(
      text: "미용실",
      options: [
        Option(text: "美容室", isCorrect: true),
        Option(text: "病院", isCorrect: false),
        Option(text: "エステ", isCorrect: false),
        Option(text: "マッサージ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가을",
      options: [
        Option(text: "春", isCorrect: false),
        Option(text: "夏", isCorrect: false),
        Option(text: "秋", isCorrect: true),
        Option(text: "冬", isCorrect: false),
      ],
    ),
    Quiz(
      text: "창문",
      options: [
        Option(text: "窓", isCorrect: true),
        Option(text: "ドア", isCorrect: false),
        Option(text: "床", isCorrect: false),
        Option(text: "壁", isCorrect: false),
      ],
    ),
    Quiz(
      text: "흰색",
      options: [
        Option(text: "白", isCorrect: true),
        Option(text: "黒", isCorrect: false),
        Option(text: "赤", isCorrect: false),
        Option(text: "青", isCorrect: false),
      ],
    ),
    Quiz(
      text: "마음",
      options: [
        Option(text: "頭", isCorrect: false),
        Option(text: "心", isCorrect: true),
        Option(text: "体", isCorrect: false),
        Option(text: "手", isCorrect: false),
      ],
    ),
    Quiz(
      text: "신호",
      options: [
        Option(text: "合図", isCorrect: false),
        Option(text: "音", isCorrect: false),
        Option(text: "信号", isCorrect: true),
        Option(text: "光", isCorrect: false),
      ],
    ),
    Quiz(
      text: "식품",
      options: [
        Option(text: "飲み物", isCorrect: false),
        Option(text: "野菜", isCorrect: false),
        Option(text: "果物", isCorrect: false),
        Option(text: "食品", isCorrect: true),
      ],
    ),
    Quiz(
      text: "기차",
      options: [
        Option(text: "汽車", isCorrect: true),
        Option(text: "バス", isCorrect: false),
        Option(text: "自動車", isCorrect: false),
        Option(text: "自転車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사무실",
      options: [
        Option(text: "教室", isCorrect: false),
        Option(text: "部屋", isCorrect: false),
        Option(text: "事務所", isCorrect: true),
        Option(text: "会議室", isCorrect: false),
      ],
    ),
    Quiz(
      text: "전자우편",
      options: [
        Option(text: "電子メール", isCorrect: true),
        Option(text: "手紙", isCorrect: false),
        Option(text: "郵便", isCorrect: false),
        Option(text: "封筒", isCorrect: false),
      ],
    ),
    Quiz(
      text: "영화",
      options: [
        Option(text: "テレビ", isCorrect: false),
        Option(text: "ドラマ", isCorrect: false),
        Option(text: "漫画", isCorrect: false),
        Option(text: "映画", isCorrect: true),
      ],
    ),
    Quiz(
      text: "지갑",
      options: [
        Option(text: "バッグ", isCorrect: false),
        Option(text: "カード", isCorrect: false),
        Option(text: "お金", isCorrect: false),
        Option(text: "財布", isCorrect: true),
      ],
    ),
    Quiz(
      text: "직업",
      options: [
        Option(text: "職業", isCorrect: true),
        Option(text: "学生", isCorrect: false),
        Option(text: "職員", isCorrect: false),
        Option(text: "作業", isCorrect: false),
      ],
    ),
    Quiz(
      text: "남편",
      options: [
        Option(text: "夫", isCorrect: true),
        Option(text: "妻", isCorrect: false),
        Option(text: "息子", isCorrect: false),
        Option(text: "娘", isCorrect: false),
      ],
    ),
    Quiz(
      text: "아내",
      options: [
        Option(text: "妻", isCorrect: true),
        Option(text: "夫", isCorrect: false),
        Option(text: "息子", isCorrect: false),
        Option(text: "娘", isCorrect: false),
      ],
    ),
    Quiz(
      text: "언니",
      options: [
        Option(text: "姉", isCorrect: true),
        Option(text: "妹", isCorrect: false),
        Option(text: "おばさん", isCorrect: false),
        Option(text: "おじさん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "누나",
      options: [
        Option(text: "姉", isCorrect: true),
        Option(text: "妹", isCorrect: false),
        Option(text: "おばさん", isCorrect: false),
        Option(text: "おじさん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "오빠",
      options: [
        Option(text: "兄", isCorrect: true),
        Option(text: "弟", isCorrect: false),
        Option(text: "兄弟", isCorrect: false),
        Option(text: "友達", isCorrect: false),
      ],
    ),
    Quiz(
      text: "형",
      options: [
        Option(text: "兄", isCorrect: true),
        Option(text: "弟", isCorrect: false),
        Option(text: "兄弟", isCorrect: false),
        Option(text: "友達", isCorrect: false),
      ],
    ),
    Quiz(
      text: "누이",
      options: [
        Option(text: "兄、弟", isCorrect: false),
        Option(text: "姉、妹", isCorrect: true),
        Option(text: "おばさん", isCorrect: false),
        Option(text: "おじさん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "동생",
      options: [
        Option(text: "兄、姉", isCorrect: false),
        Option(text: "おばさん", isCorrect: false),
        Option(text: "弟、妹", isCorrect: true),
        Option(text: "おじさん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "동료",
      options: [
        Option(text: "友達", isCorrect: false),
        Option(text: "家族", isCorrect: false),
        Option(text: "同僚", isCorrect: true),
        Option(text: "先生", isCorrect: false),
      ],
    ),
    Quiz(
      text: "연인",
      options: [
        Option(text: "夫婦", isCorrect: false),
        Option(text: "友達", isCorrect: false),
        Option(text: "恋人", isCorrect: true),
        Option(text: "家族", isCorrect: false),
      ],
    ),
    Quiz(
      text: "부부",
      options: [
        Option(text: "恋人", isCorrect: false),
        Option(text: "友達", isCorrect: false),
        Option(text: "家族", isCorrect: false),
        Option(text: "夫婦", isCorrect: true),
      ],
    ),
    Quiz(
      text: "아이",
      options: [
        Option(text: "大人", isCorrect: false),
        Option(text: "親", isCorrect: false),
        Option(text: "子供", isCorrect: true),
        Option(text: "祖父母", isCorrect: false),
      ],
    ),
    Quiz(
      text: "부모",
      options: [
        Option(text: "子供", isCorrect: false),
        Option(text: "祖父母", isCorrect: false),
        Option(text: "兄弟姉妹", isCorrect: false),
        Option(text: "親", isCorrect: true),
      ],
    ),
    Quiz(
      text: "할아버지",
      options: [
        Option(text: "祖母", isCorrect: false),
        Option(text: "祖父", isCorrect: true),
        Option(text: "父", isCorrect: false),
        Option(text: "母", isCorrect: false),
      ],
    ),
    Quiz(
      text: "할머니",
      options: [
        Option(text: "祖母", isCorrect: true),
        Option(text: "祖父", isCorrect: false),
        Option(text: "父", isCorrect: false),
        Option(text: "母", isCorrect: false),
      ],
    ),
    Quiz(
      text: "아들",
      options: [
        Option(text: "息子", isCorrect: true),
        Option(text: "娘", isCorrect: false),
        Option(text: "兄", isCorrect: false),
        Option(text: "弟", isCorrect: false),
      ],
    ),
    Quiz(
      text: "딸",
      options: [
        Option(text: "娘", isCorrect: true),
        Option(text: "息子", isCorrect: false),
        Option(text: "姉", isCorrect: false),
        Option(text: "妹", isCorrect: false),
      ],
    ),
    Quiz(
      text: "소년",
      options: [
        Option(text: "少年", isCorrect: true),
        Option(text: "青年", isCorrect: false),
        Option(text: "男の子", isCorrect: false),
        Option(text: "男性", isCorrect: false),
      ],
    ),
    Quiz(
      text: "소녀",
      options: [
        Option(text: "少女", isCorrect: true),
        Option(text: "妹", isCorrect: false),
        Option(text: "女性", isCorrect: false),
        Option(text: "青年", isCorrect: false),
      ],
    ),
    Quiz(
      text: "웃음",
      options: [
        Option(text: "笑顔", isCorrect: true),
        Option(text: "涙", isCorrect: false),
        Option(text: "怒り", isCorrect: false),
        Option(text: "恐怖", isCorrect: false),
      ],
    ),
    Quiz(
      text: "즐거움",
      options: [
        Option(text: "楽しみ", isCorrect: true),
        Option(text: "幸せ", isCorrect: false),
        Option(text: "喜び", isCorrect: false),
        Option(text: "愛", isCorrect: false),
      ],
    ),
    Quiz(
      text: "슬픔",
      options: [
        Option(text: "悲しみ", isCorrect: true),
        Option(text: "恐怖", isCorrect: false),
        Option(text: "苦しみ", isCorrect: false),
        Option(text: "寂しさ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "두려움",
      options: [
        Option(text: "不安", isCorrect: false),
        Option(text: "怒り", isCorrect: false),
        Option(text: "恐怖", isCorrect: true),
        Option(text: "驚き", isCorrect: false),
      ],
    ),
    Quiz(
      text: "잔소리",
      options: [
        Option(text: "小言", isCorrect: true),
        Option(text: "忠告", isCorrect: false),
        Option(text: "批判", isCorrect: false),
        Option(text: "助言", isCorrect: false),
      ],
    ),
    Quiz(
      text: "진실",
      options: [
        Option(text: "未来", isCorrect: false),
        Option(text: "現実", isCorrect: false),
        Option(text: "真実", isCorrect: true),
        Option(text: "信仰", isCorrect: false),
      ],
    ),
    Quiz(
      text: "감사",
      options: [
        Option(text: "感謝", isCorrect: true),
        Option(text: "謝罪", isCorrect: false),
        Option(text: "社交", isCorrect: false),
        Option(text: "許し", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사과",
      options: [
        Option(text: "感謝", isCorrect: false),
        Option(text: "謝辞", isCorrect: false),
        Option(text: "謝罪", isCorrect: true),
        Option(text: "許し", isCorrect: false),
      ],
    ),
    Quiz(
      text: "방문",
      options: [
        Option(text: "来日", isCorrect: false),
        Option(text: "出かける", isCorrect: false),
        Option(text: "部屋", isCorrect: false),
        Option(text: "訪問", isCorrect: true),
      ],
    ),
    Quiz(
      text: "숙제",
      options: [
        Option(text: "掃除", isCorrect: false),
        Option(text: "仕事", isCorrect: false),
        Option(text: "宿題", isCorrect: true),
        Option(text: "職業", isCorrect: false),
      ],
    ),
    Quiz(
      text: "생각",
      options: [
        Option(text: "感じ", isCorrect: false),
        Option(text: "聞こえ", isCorrect: false),
        Option(text: "考え", isCorrect: true),
        Option(text: "話", isCorrect: false),
      ],
    ),
    Quiz(
      text: "노래방",
      options: [
        Option(text: "音楽堂", isCorrect: false),
        Option(text: "歌舞伎", isCorrect: false),
        Option(text: "コンサートホール", isCorrect: false),
        Option(text: "カラオケ", isCorrect: true),
      ],
    ),
    Quiz(
      text: "잠",
      options: [
        Option(text: "休息", isCorrect: false),
        Option(text: "休憩", isCorrect: false),
        Option(text: "眠り", isCorrect: true),
        Option(text: "眠気", isCorrect: false),
      ],
    ),
    Quiz(
      text: "잡지",
      options: [
        Option(text: "新聞", isCorrect: false),
        Option(text: "本", isCorrect: false),
        Option(text: "漫画", isCorrect: false),
        Option(text: "雑誌", isCorrect: true),
      ],
    ),
    Quiz(
      text: "연습",
      options: [
        Option(text: "練り歩く", isCorrect: false),
        Option(text: "稽古", isCorrect: false),
        Option(text: "実践", isCorrect: false),
        Option(text: "練習", isCorrect: true),
      ],
    ),
    Quiz(
      text: "연극",
      options: [
        Option(text: "映画", isCorrect: false),
        Option(text: "演奏会", isCorrect: false),
        Option(text: "演劇", isCorrect: true),
        Option(text: "学会", isCorrect: false),
      ],
    ),
    Quiz(
      text: "평소",
      options: [
        Option(text: "病院", isCorrect: false),
        Option(text: "平等", isCorrect: false),
        Option(text: "普段", isCorrect: true),
        Option(text: "平和", isCorrect: false),
      ],
    ),
    Quiz(
      text: "직장",
      options: [
        Option(text: "会社", isCorrect: false),
        Option(text: "店", isCorrect: false),
        Option(text: "工場", isCorrect: false),
        Option(text: "職場", isCorrect: true),
      ],
    ),
    Quiz(
      text: "상자",
      options: [
        Option(text: "箱", isCorrect: true),
        Option(text: "ケース", isCorrect: false),
        Option(text: "カバー", isCorrect: false),
        Option(text: "袋", isCorrect: false),
      ],
    ),
    Quiz(
      text: "어제",
      options: [
        Option(text: "昨日", isCorrect: true),
        Option(text: "明日", isCorrect: false),
        Option(text: "今日", isCorrect: false),
        Option(text: "毎日", isCorrect: false),
      ],
    ),
    Quiz(
      text: "내일",
      options: [
        Option(text: "明日", isCorrect: true),
        Option(text: "昨日", isCorrect: false),
        Option(text: "今日", isCorrect: false),
        Option(text: "毎日", isCorrect: false),
      ],
    ),
    Quiz(
      text: "모레",
      options: [
        Option(text: "明後日", isCorrect: true),
        Option(text: "昨日", isCorrect: false),
        Option(text: "今日", isCorrect: false),
        Option(text: "明日", isCorrect: false),
      ],
    ),
    Quiz(
      text: "왼쪽",
      options: [
        Option(text: "左", isCorrect: true),
        Option(text: "右", isCorrect: false),
        Option(text: "上", isCorrect: false),
        Option(text: "下", isCorrect: false),
      ],
    ),
    Quiz(
      text: "오른쪽",
      options: [
        Option(text: "左", isCorrect: false),
        Option(text: "右", isCorrect: true),
        Option(text: "上", isCorrect: false),
        Option(text: "下", isCorrect: false),
      ],
    ),
    Quiz(
      text: "위",
      options: [
        Option(text: "上", isCorrect: true),
        Option(text: "下", isCorrect: false),
        Option(text: "左", isCorrect: false),
        Option(text: "右", isCorrect: false),
      ],
    ),
    Quiz(
      text: "아래",
      options: [
        Option(text: "下", isCorrect: true),
        Option(text: "上", isCorrect: false),
        Option(text: "左", isCorrect: false),
        Option(text: "右", isCorrect: false),
      ],
    ),
    Quiz(
      text: "앞",
      options: [
        Option(text: "前", isCorrect: true),
        Option(text: "後", isCorrect: false),
        Option(text: "右", isCorrect: false),
        Option(text: "左", isCorrect: false),
      ],
    ),
    Quiz(
      text: "뒤",
      options: [
        Option(text: "後", isCorrect: true),
        Option(text: "前", isCorrect: false),
        Option(text: "右", isCorrect: false),
        Option(text: "左", isCorrect: false),
      ],
    ),
    Quiz(
      text: "손목",
      options: [
        Option(text: "手首", isCorrect: true),
        Option(text: "指", isCorrect: false),
        Option(text: "手", isCorrect: false),
        Option(text: "腕", isCorrect: false),
      ],
    ),
    Quiz(
      text: "콩나물",
      options: [
        Option(text: "ほうれん草", isCorrect: false),
        Option(text: "レタス", isCorrect: false),
        Option(text: "もやし", isCorrect: true),
        Option(text: "キャベツ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "시금치",
      options: [
        Option(text: "もやし", isCorrect: false),
        Option(text: "レタス", isCorrect: false),
        Option(text: "キャベツ", isCorrect: false),
        Option(text: "ほうれん草", isCorrect: true),
      ],
    ),
    Quiz(
      text: "양배추",
      options: [
        Option(text: "もやし", isCorrect: false),
        Option(text: "レタス", isCorrect: false),
        Option(text: "キャベツ", isCorrect: true),
        Option(text: "ほうれん草", isCorrect: false),
      ],
    ),
    Quiz(
      text: "상추",
      options: [
        Option(text: "もやし", isCorrect: false),
        Option(text: "キャベツ", isCorrect: false),
        Option(text: "ほうれん草", isCorrect: false),
        Option(text: "レタス", isCorrect: true),
      ],
    ),
    Quiz(
      text: "설탕",
      options: [
        Option(text: "砂糖", isCorrect: true),
        Option(text: "塩", isCorrect: false),
        Option(text: "醤油", isCorrect: false),
        Option(text: "味噌", isCorrect: false),
      ],
    ),
    Quiz(
      text: "간장",
      options: [
        Option(text: "醤油", isCorrect: true),
        Option(text: "塩", isCorrect: false),
        Option(text: "砂糖", isCorrect: false),
        Option(text: "味噌", isCorrect: false),
      ],
    ),
    Quiz(
      text: "된장",
      options: [
        Option(text: "醤油", isCorrect: false),
        Option(text: "塩", isCorrect: false),
        Option(text: "味噌", isCorrect: true),
        Option(text: "砂糖", isCorrect: false),
      ],
    ),
    Quiz(
      text: "과자",
      options: [
        Option(text: "ごはん", isCorrect: false),
        Option(text: "お菓子", isCorrect: true),
        Option(text: "砂糖", isCorrect: false),
        Option(text: "チョコレート", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사탕",
      options: [
        Option(text: "キャンディ", isCorrect: true),
        Option(text: "ガム", isCorrect: false),
        Option(text: "駄菓子", isCorrect: false),
        Option(text: "レモン", isCorrect: false),
      ],
    ),
    Quiz(
      text: "해산물",
      options: [
        Option(text: "海鮮物", isCorrect: true),
        Option(text: "燻製", isCorrect: false),
        Option(text: "魚類", isCorrect: false),
        Option(text: "肉", isCorrect: false),
      ],
    ),
    Quiz(
      text: "빵",
      options: [
        Option(text: "パン", isCorrect: true),
        Option(text: "ご飯", isCorrect: false),
        Option(text: "ごはん", isCorrect: false),
        Option(text: "麺", isCorrect: false),
      ],
    ),
    Quiz(
      text: "국수",
      options: [
        Option(text: "パン", isCorrect: false),
        Option(text: "ご飯", isCorrect: false),
        Option(text: "麺", isCorrect: true),
        Option(text: "ごはん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "돈가스",
      options: [
        Option(text: "トンカツ", isCorrect: true),
        Option(text: "ご飯", isCorrect: false),
        Option(text: "カレーライス", isCorrect: false),
        Option(text: "ラーメン", isCorrect: false),
      ],
    ),
    Quiz(
      text: "소바",
      options: [
        Option(text: "そば", isCorrect: true),
        Option(text: "うどん", isCorrect: false),
        Option(text: "ラーメン", isCorrect: false),
        Option(text: "そうめん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "우동",
      options: [
        Option(text: "そば", isCorrect: false),
        Option(text: "ラーメン", isCorrect: false),
        Option(text: "うどん", isCorrect: true),
        Option(text: "そうめん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "라면",
      options: [
        Option(text: "ラーメン", isCorrect: true),
        Option(text: "うどん", isCorrect: false),
        Option(text: "そば", isCorrect: false),
        Option(text: "そうめん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "그림",
      options: [
        Option(text: "写真", isCorrect: false),
        Option(text: "影", isCorrect: false),
        Option(text: "絵", isCorrect: true),
        Option(text: "ポスター", isCorrect: false),
      ],
    ),
    Quiz(
      text: "의자",
      options: [
        Option(text: "机", isCorrect: false),
        Option(text: "本棚", isCorrect: false),
        Option(text: "ベッド", isCorrect: false),
        Option(text: "椅子", isCorrect: true),
      ],
    ),
    Quiz(
      text: "책장",
      options: [
        Option(text: "机", isCorrect: false),
        Option(text: "椅子", isCorrect: false),
        Option(text: "本棚", isCorrect: true),
        Option(text: "ベッド", isCorrect: false),
      ],
    ),
    Quiz(
      text: "식탁",
      options: [
        Option(text: "食卓", isCorrect: true),
        Option(text: "机", isCorrect: false),
        Option(text: "椅子", isCorrect: false),
        Option(text: "ベッド", isCorrect: false),
      ],
    ),
    Quiz(
      text: "낮",
      options: [
        Option(text: "夜", isCorrect: false),
        Option(text: "朝", isCorrect: false),
        Option(text: "午後", isCorrect: false),
        Option(text: "昼", isCorrect: true),
      ],
    ),
    Quiz(
      text: "아침",
      options: [
        Option(text: "朝", isCorrect: true),
        Option(text: "夜", isCorrect: false),
        Option(text: "昼", isCorrect: false),
        Option(text: "午後", isCorrect: false),
      ],
    ),
    Quiz(
      text: "오후",
      options: [
        Option(text: "夜", isCorrect: false),
        Option(text: "午後", isCorrect: true),
        Option(text: "昼", isCorrect: false),
        Option(text: "朝", isCorrect: false),
      ],
    ),
    Quiz(
      text: "크기",
      options: [
        Option(text: "小さい", isCorrect: false),
        Option(text: "大きい", isCorrect: false),
        Option(text: "容積", isCorrect: false),
        Option(text: "サイズ", isCorrect: true),
      ],
    ),
    Quiz(
      text: "두께",
      options: [
        Option(text: "太さ", isCorrect: false),
        Option(text: "広さ", isCorrect: false),
        Option(text: "厚み", isCorrect: true),
        Option(text: "長さ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "양",
      options: [
        Option(text: "大きさ", isCorrect: false),
        Option(text: "サイズ", isCorrect: false),
        Option(text: "量", isCorrect: true),
        Option(text: "容積", isCorrect: false),
      ],
    ),
    Quiz(
      text: "면적",
      options: [
        Option(text: "面積", isCorrect: true),
        Option(text: "大きさ", isCorrect: false),
        Option(text: "サイズ", isCorrect: false),
        Option(text: "容積", isCorrect: false),
      ],
    ),
    Quiz(
      text: "너비",
      options: [
        Option(text: "幅", isCorrect: true),
        Option(text: "太さ", isCorrect: false),
        Option(text: "長さ", isCorrect: false),
        Option(text: "高さ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "높이",
      options: [
        Option(text: "高く", isCorrect: true),
        Option(text: "幅", isCorrect: false),
        Option(text: "長く", isCorrect: false),
        Option(text: "太く", isCorrect: false),
      ],
    ),
    Quiz(
      text: "양쪽",
      options: [
        Option(text: "両側", isCorrect: true),
        Option(text: "片側", isCorrect: false),
        Option(text: "右側", isCorrect: false),
        Option(text: "側面", isCorrect: false),
      ],
    ),
    Quiz(
      text: "그림자",
      options: [
        Option(text: "影", isCorrect: true),
        Option(text: "影響", isCorrect: false),
        Option(text: "影像", isCorrect: false),
        Option(text: "印象", isCorrect: false),
      ],
    ),
    Quiz(
      text: "영향",
      options: [
        Option(text: "影響", isCorrect: true),
        Option(text: "影", isCorrect: false),
        Option(text: "影像", isCorrect: false),
        Option(text: "印象", isCorrect: false),
      ],
    ),
    Quiz(
      text: "효과",
      options: [
        Option(text: "効率", isCorrect: false),
        Option(text: "効果", isCorrect: true),
        Option(text: "評価", isCorrect: false),
        Option(text: "評論", isCorrect: false),
      ],
    ),
    Quiz(
      text: "인상",
      options: [
        Option(text: "人相", isCorrect: true),
        Option(text: "人物", isCorrect: false),
        Option(text: "影響", isCorrect: false),
        Option(text: "影像", isCorrect: false),
      ],
    ),
    Quiz(
      text: "자리",
      options: [
        Option(text: "場所", isCorrect: true),
        Option(text: "時", isCorrect: false),
        Option(text: "席替え", isCorrect: false),
        Option(text: "時間", isCorrect: false),
      ],
    ),
    Quiz(
      text: "좌석",
      options: [
        Option(text: "順", isCorrect: false),
        Option(text: "居酒屋", isCorrect: false),
        Option(text: "座席", isCorrect: true),
        Option(text: "自身", isCorrect: false),
      ],
    ),
    Quiz(
      text: "장소",
      options: [
        Option(text: "場所", isCorrect: true),
        Option(text: "座席", isCorrect: false),
        Option(text: "席順", isCorrect: false),
        Option(text: "場面", isCorrect: false),
      ],
    ),
    Quiz(
      text: "극장",
      options: [
        Option(text: "映画館", isCorrect: false),
        Option(text: "劇場", isCorrect: true),
        Option(text: "会場", isCorrect: false),
        Option(text: "スタジオ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "드라마",
      options: [
        Option(text: "映画", isCorrect: false),
        Option(text: "漫画", isCorrect: false),
        Option(text: "ドラマ", isCorrect: true),
        Option(text: "小説", isCorrect: false),
      ],
    ),
    Quiz(
      text: "대회",
      options: [
        Option(text: "競争", isCorrect: false),
        Option(text: "試合", isCorrect: false),
        Option(text: "競技", isCorrect: false),
        Option(text: "大会", isCorrect: true),
      ],
    ),
    Quiz(
      text: "경쟁",
      options: [
        Option(text: "大会", isCorrect: false),
        Option(text: "試合", isCorrect: false),
        Option(text: "競争", isCorrect: true),
        Option(text: "競技", isCorrect: false),
      ],
    ),
    Quiz(
      text: "경기",
      options: [
        Option(text: "競技", isCorrect: true),
        Option(text: "大会", isCorrect: false),
        Option(text: "戦争", isCorrect: false),
        Option(text: "協定", isCorrect: false),
      ],
    ),
    Quiz(
      text: "대항전",
      options: [
        Option(text: "対抗戦", isCorrect: true),
        Option(text: "大会", isCorrect: false),
        Option(text: "協調", isCorrect: false),
        Option(text: "紛争", isCorrect: false),
      ],
    ),
    Quiz(
      text: "전쟁",
      options: [
        Option(text: "戦闘", isCorrect: false),
        Option(text: "軍隊", isCorrect: false),
        Option(text: "戦争", isCorrect: true),
        Option(text: "攻撃", isCorrect: false),
      ],
    ),
    Quiz(
      text: "전투",
      options: [
        Option(text: "戦闘", isCorrect: true),
        Option(text: "船体", isCorrect: false),
        Option(text: "軍隊", isCorrect: false),
        Option(text: "攻撃", isCorrect: false),
      ],
    ),
    Quiz(
      text: "군대",
      options: [
        Option(text: "戦争", isCorrect: false),
        Option(text: "戦闘", isCorrect: false),
        Option(text: "軍隊", isCorrect: true),
        Option(text: "攻撃", isCorrect: false),
      ],
    ),
    Quiz(
      text: "공격",
      options: [
        Option(text: "戦争", isCorrect: false),
        Option(text: "戦闘", isCorrect: false),
        Option(text: "攻撃", isCorrect: true),
        Option(text: "軍隊", isCorrect: false),
      ],
    ),
    Quiz(
      text: "요금",
      options: [
        Option(text: "相場", isCorrect: false),
        Option(text: "出費", isCorrect: false),
        Option(text: "破格", isCorrect: false),
        Option(text: "料金", isCorrect: true),
      ],
    ),
    Quiz(
      text: "비용",
      options: [
        Option(text: "費用", isCorrect: true),
        Option(text: "料金", isCorrect: false),
        Option(text: "価格", isCorrect: false),
        Option(text: "値段", isCorrect: false),
      ],
    ),
    Quiz(
      text: "값",
      options: [
        Option(text: "値", isCorrect: true),
        Option(text: "金", isCorrect: false),
        Option(text: "借金", isCorrect: false),
        Option(text: "値引き", isCorrect: false),
      ],
    ),
    Quiz(
      text: "기록",
      options: [
        Option(text: "記憶", isCorrect: false),
        Option(text: "思い出", isCorrect: false),
        Option(text: "感じ", isCorrect: false),
        Option(text: "記録", isCorrect: true),
      ],
    ),
    Quiz(
      text: "느낌",
      options: [
        Option(text: "感じ", isCorrect: true),
        Option(text: "思い出", isCorrect: false),
        Option(text: "記録", isCorrect: false),
        Option(text: "記憶", isCorrect: false),
      ],
    ),
    Quiz(
      text: "우정",
      options: [
        Option(text: "愛", isCorrect: false),
        Option(text: "友情", isCorrect: true),
        Option(text: "仲間", isCorrect: false),
        Option(text: "家族", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가족",
      options: [
        Option(text: "友達", isCorrect: false),
        Option(text: "仲間", isCorrect: false),
        Option(text: "恋人", isCorrect: false),
        Option(text: "家族", isCorrect: true),
      ],
    ),
    Quiz(
      text: "잡다",
      options: [
        Option(text: "つかむ", isCorrect: true),
        Option(text: "離す", isCorrect: false),
        Option(text: "抱擁", isCorrect: false),
        Option(text: "握手", isCorrect: false),
      ],
    ),
    Quiz(
      text: "열쇠",
      options: [
        Option(text: "ドア", isCorrect: false),
        Option(text: "窓", isCorrect: false),
        Option(text: "倉庫", isCorrect: false),
        Option(text: "カギ", isCorrect: true),
      ],
    ),
    Quiz(
      text: "문",
      options: [
        Option(text: "ドア", isCorrect: true),
        Option(text: "窓", isCorrect: false),
        Option(text: "床", isCorrect: false),
        Option(text: "天井", isCorrect: false),
      ],
    ),
    Quiz(
      text: "바닥",
      options: [
        Option(text: "ドア", isCorrect: false),
        Option(text: "窓", isCorrect: false),
        Option(text: "床", isCorrect: true),
        Option(text: "天井", isCorrect: false),
      ],
    ),
    Quiz(
      text: "천장",
      options: [
        Option(text: "ドア", isCorrect: false),
        Option(text: "窓", isCorrect: false),
        Option(text: "天井", isCorrect: true),
        Option(text: "床", isCorrect: false),
      ],
    ),
    Quiz(
      text: "주방",
      options: [
        Option(text: "洗面所", isCorrect: false),
        Option(text: "厨房", isCorrect: true),
        Option(text: "浴室", isCorrect: false),
        Option(text: "客間", isCorrect: false),
      ],
    ),
    Quiz(
      text: "욕실",
      options: [
        Option(text: "浴室", isCorrect: true),
        Option(text: "洗面所", isCorrect: false),
        Option(text: "台所", isCorrect: false),
        Option(text: "客間", isCorrect: false),
      ],
    ),
    Quiz(
      text: "세면실",
      options: [
        Option(text: "浴室", isCorrect: false),
        Option(text: "台所", isCorrect: false),
        Option(text: "洗面所", isCorrect: true),
        Option(text: "客間", isCorrect: false),
      ],
    ),
    Quiz(
      text: "침실",
      options: [
        Option(text: "居間", isCorrect: false),
        Option(text: "客間", isCorrect: false),
        Option(text: "寝室", isCorrect: true),
        Option(text: "台所", isCorrect: false),
      ],
    ),
    Quiz(
      text: "거실",
      options: [
        Option(text: "教室", isCorrect: false),
        Option(text: "寝室", isCorrect: false),
        Option(text: "居間", isCorrect: true),
        Option(text: "台所", isCorrect: false),
      ],
    ),
    Quiz(
      text: "회의실",
      options: [
        Option(text: "教室", isCorrect: false),
        Option(text: "職員室", isCorrect: false),
        Option(text: "会議室", isCorrect: true),
        Option(text: "事務所", isCorrect: false),
      ],
    ),
    Quiz(
      text: "샤워",
      options: [
        Option(text: "シャワー", isCorrect: true),
        Option(text: "風呂", isCorrect: false),
        Option(text: "浴槽", isCorrect: false),
        Option(text: "トイレ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "욕조",
      options: [
        Option(text: "シャワー", isCorrect: false),
        Option(text: "風呂", isCorrect: false),
        Option(text: "浴槽", isCorrect: true),
        Option(text: "トイレ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "화장실",
      options: [
        Option(text: "トイレ", isCorrect: true),
        Option(text: "シャワー", isCorrect: false),
        Option(text: "浴槽", isCorrect: false),
        Option(text: "風呂", isCorrect: false),
      ],
    ),
    Quiz(
      text: "오토바이",
      options: [
        Option(text: "自動車", isCorrect: false),
        Option(text: "自転車", isCorrect: false),
        Option(text: "バイク", isCorrect: true),
        Option(text: "電車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "전차",
      options: [
        Option(text: "自動車", isCorrect: false),
        Option(text: "バイク", isCorrect: false),
        Option(text: "自転車", isCorrect: false),
        Option(text: "電車", isCorrect: true),
      ],
    ),
    Quiz(
      text: "보트",
      options: [
        Option(text: "ボート", isCorrect: true),
        Option(text: "飛行機", isCorrect: false),
        Option(text: "バス", isCorrect: false),
        Option(text: "自動車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "버스",
      options: [
        Option(text: "バス", isCorrect: true),
        Option(text: "飛行機", isCorrect: false),
        Option(text: "船", isCorrect: false),
        Option(text: "自動車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "비행기",
      options: [
        Option(text: "自動車", isCorrect: false),
        Option(text: "バイク", isCorrect: false),
        Option(text: "飛行機", isCorrect: true),
        Option(text: "電車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "배",
      options: [
        Option(text: "飛行機", isCorrect: false),
        Option(text: "バス", isCorrect: false),
        Option(text: "船", isCorrect: true),
        Option(text: "自動車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "종류",
      options: [
        Option(text: "種類", isCorrect: true),
        Option(text: "形", isCorrect: false),
        Option(text: "大きさ", isCorrect: false),
        Option(text: "色", isCorrect: false),
      ],
    ),
    Quiz(
      text: "맛",
      options: [
        Option(text: "形", isCorrect: false),
        Option(text: "味", isCorrect: true),
        Option(text: "種類", isCorrect: false),
        Option(text: "大きさ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "모양",
      options: [
        Option(text: "種類", isCorrect: false),
        Option(text: "大きさ", isCorrect: false),
        Option(text: "形", isCorrect: true),
        Option(text: "変形", isCorrect: false),
      ],
    ),
    Quiz(
      text: "체중",
      options: [
        Option(text: "身長", isCorrect: false),
        Option(text: "体重", isCorrect: true),
        Option(text: "年齢", isCorrect: false),
        Option(text: "体温", isCorrect: false),
      ],
    ),
    Quiz(
      text: "나이",
      options: [
        Option(text: "身長", isCorrect: false),
        Option(text: "体重", isCorrect: false),
        Option(text: "年齢", isCorrect: true),
        Option(text: "体温", isCorrect: false),
      ],
    ),
    Quiz(
      text: "온도",
      options: [
        Option(text: "身長", isCorrect: false),
        Option(text: "体重", isCorrect: false),
        Option(text: "年齢", isCorrect: false),
        Option(text: "温度", isCorrect: true),
      ],
    ),
    Quiz(
      text: "살",
      options: [
        Option(text: "身長", isCorrect: false),
        Option(text: "歳", isCorrect: true),
        Option(text: "体重", isCorrect: false),
        Option(text: "体温", isCorrect: false),
      ],
    ),
    Quiz(
      text: "시간",
      options: [
        Option(text: "日", isCorrect: false),
        Option(text: "週", isCorrect: false),
        Option(text: "年", isCorrect: false),
        Option(text: "時間", isCorrect: true),
      ],
    ),
    Quiz(
      text: "주",
      options: [
        Option(text: "曜日", isCorrect: false),
        Option(text: "日付", isCorrect: false),
        Option(text: "年", isCorrect: false),
        Option(text: "週", isCorrect: true),
      ],
    ),
    Quiz(
      text: "년",
      options: [
        Option(text: "週", isCorrect: false),
        Option(text: "曜日", isCorrect: false),
        Option(text: "年", isCorrect: true),
        Option(text: "日付", isCorrect: false),
      ],
    ),
    Quiz(
      text: "새벽",
      options: [
        Option(text: "夕方", isCorrect: false),
        Option(text: "夜明け", isCorrect: true),
        Option(text: "昼", isCorrect: false),
        Option(text: "夜", isCorrect: false),
      ],
    ),
    Quiz(
      text: "저녁",
      options: [
        Option(text: "夜明け", isCorrect: false),
        Option(text: "昼", isCorrect: false),
        Option(text: "夜", isCorrect: false),
        Option(text: "夕方", isCorrect: true),
      ],
    ),
    Quiz(
      text: "거짓",
      options: [
        Option(text: "真実", isCorrect: false),
        Option(text: "正しい", isCorrect: false),
        Option(text: "間違い", isCorrect: false),
        Option(text: "偽", isCorrect: true),
      ],
    ),
    Quiz(
      text: "위험",
      options: [
        Option(text: "危険", isCorrect: true),
        Option(text: "安全", isCorrect: false),
        Option(text: "事故", isCorrect: false),
        Option(text: "怖い", isCorrect: false),
      ],
    ),
    Quiz(
      text: "안전",
      options: [
        Option(text: "危険", isCorrect: false),
        Option(text: "安全", isCorrect: true),
        Option(text: "事故", isCorrect: false),
        Option(text: "怖い", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사고",
      options: [
        Option(text: "安全", isCorrect: false),
        Option(text: "危険", isCorrect: false),
        Option(text: "事故", isCorrect: true),
        Option(text: "怖い", isCorrect: false),
      ],
    ),
    Quiz(
      text: "셔츠",
      options: [
        Option(text: "靴", isCorrect: false),
        Option(text: "ズボン", isCorrect: false),
        Option(text: "シャツ", isCorrect: true),
        Option(text: "帽子", isCorrect: false),
      ],
    ),
    Quiz(
      text: "코트",
      options: [
        Option(text: "コート", isCorrect: true),
        Option(text: "帽子", isCorrect: false),
        Option(text: "靴", isCorrect: false),
        Option(text: "ズボン", isCorrect: false),
      ],
    ),
    Quiz(
      text: "안경",
      options: [
        Option(text: "ネクタイ", isCorrect: false),
        Option(text: "時計", isCorrect: false),
        Option(text: "イヤリング", isCorrect: false),
        Option(text: "眼鏡", isCorrect: true),
      ],
    ),
    Quiz(
      text: "넥타이",
      options: [
        Option(text: "眼鏡", isCorrect: false),
        Option(text: "時計", isCorrect: false),
        Option(text: "イヤリング", isCorrect: false),
        Option(text: "ネクタイ", isCorrect: true),
      ],
    ),
    Quiz(
      text: "시계",
      options: [
        Option(text: "眼鏡", isCorrect: false),
        Option(text: "ネクタイ", isCorrect: false),
        Option(text: "時計", isCorrect: true),
        Option(text: "イヤリング", isCorrect: false),
      ],
    ),
    Quiz(
      text: "바늘",
      options: [
        Option(text: "眼鏡", isCorrect: false),
        Option(text: "時計", isCorrect: false),
        Option(text: "針", isCorrect: true),
        Option(text: "イヤリング", isCorrect: false),
      ],
    ),
    Quiz(
      text: "귀걸이",
      options: [
        Option(text: "眼鏡", isCorrect: false),
        Option(text: "ネクタイ", isCorrect: false),
        Option(text: "時計", isCorrect: false),
        Option(text: "イヤリング", isCorrect: true),
      ],
    ),
    Quiz(
      text: "손목시계",
      options: [
        Option(text: "眼鏡", isCorrect: false),
        Option(text: "ネクタイ", isCorrect: false),
        Option(text: "イヤリング", isCorrect: false),
        Option(text: "腕時計", isCorrect: true),
      ],
    ),
    Quiz(
      text: "구름",
      options: [
        Option(text: "雨", isCorrect: false),
        Option(text: "雲", isCorrect: true),
        Option(text: "風", isCorrect: false),
        Option(text: "雷", isCorrect: false),
      ],
    ),
    Quiz(
      text: "미움",
      options: [
        Option(text: "憎しみ", isCorrect: true),
        Option(text: "愛", isCorrect: false),
        Option(text: "友情", isCorrect: false),
        Option(text: "喜び", isCorrect: false),
      ],
    ),
  ];

  // 挨拶
  static final List<Quiz> korianBiginnerGreets = [
    Quiz(
      text: "실례합니다",
      options: [
        Option(text: "失礼します", isCorrect: true),
        Option(text: "こんにちは", isCorrect: false),
        Option(text: "ありがとう", isCorrect: false),
        Option(text: "おやすみなさい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "또 만나요",
      options: [
        Option(text: "どうぞよろしく", isCorrect: false),
        Option(text: "ごめんなさい", isCorrect: false),
        Option(text: "おはようございます", isCorrect: false),
        Option(text: "また会いましょう", isCorrect: true),
      ],
    ),
    Quiz(
      text: "고마워",
      options: [
        Option(text: "さようなら", isCorrect: false),
        Option(text: "お疲れ様です", isCorrect: false),
        Option(text: "ありがとう", isCorrect: true),
        Option(text: "お元気ですか？", isCorrect: false),
      ],
    ),
    Quiz(
      text: "미안해",
      options: [
        Option(text: "ありがとうございます", isCorrect: false),
        Option(text: "おはようございます", isCorrect: false),
        Option(text: "ごめんね", isCorrect: true),
        Option(text: "おやすみなさい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "잘 먹겠습니다",
      options: [
        Option(text: "お疲れ様です", isCorrect: false),
        Option(text: "またね", isCorrect: false),
        Option(text: "さようなら", isCorrect: false),
        Option(text: "いただきます", isCorrect: true),
      ],
    ),
    Quiz(
      text: "잘 지내세요?",
      options: [
        Option(text: "お元気ですか？", isCorrect: true),
        Option(text: "おはようございます", isCorrect: false),
        Option(text: "ありがとうございます", isCorrect: false),
        Option(text: "こんにちは", isCorrect: false),
      ],
    ),
    Quiz(
      text: "보고 싶었어요",
      options: [
        Option(text: "さようなら", isCorrect: false),
        Option(text: "いただきます", isCorrect: false),
        Option(text: "おやすみなさい", isCorrect: false),
        Option(text: "会いたかったです", isCorrect: true),
      ],
    ),
    Quiz(
      text: "좋은 하루 보내세요",
      options: [
        Option(text: "良い一日を", isCorrect: true),
        Option(text: "おはようございます", isCorrect: false),
        Option(text: "いただきます", isCorrect: false),
        Option(text: "ありがとうございます", isCorrect: false),
      ],
    ),
    Quiz(
      text: "잘 부탁합니다",
      options: [
        Option(text: "おはようございます", isCorrect: false),
        Option(text: "おやすみなさい", isCorrect: false),
        Option(text: "よろしくお願いします", isCorrect: true),
        Option(text: "ありがとうございます", isCorrect: false),
      ],
    ),
    Quiz(
      text: "성함이 어떻게 되세요?",
      options: [
        Option(text: "お元気ですか？", isCorrect: false),
        Option(text: "どこから来ましたか？", isCorrect: false),
        Option(text: "何歳ですか？", isCorrect: false),
        Option(text: "お名前は何ですか？", isCorrect: true),
      ],
    ),
    Quiz(
      text: "나이가 어떻게 되세요?",
      options: [
        Option(text: "お名前は何ですか？", isCorrect: false),
        Option(text: "おいくつですか？", isCorrect: true),
        Option(text: "どこから来ましたか？", isCorrect: false),
        Option(text: "お元気ですか？", isCorrect: false),
      ],
    ),
    Quiz(
      text: "~에서 왔습니다",
      options: [
        Option(text: "～へいきます", isCorrect: false),
        Option(text: "～へ送ります", isCorrect: false),
        Option(text: "〜から来ました", isCorrect: true),
        Option(text: "～で行います", isCorrect: false),
      ],
    ),
    Quiz(
      text: "안녕하세요",
      options: [
        Option(text: "ありがとう", isCorrect: false),
        Option(text: "おやすみ", isCorrect: false),
        Option(text: "お疲れ様", isCorrect: false),
        Option(text: "こんにちは", isCorrect: true),
      ],
    ),
    Quiz(
      text: "감사합니다",
      options: [
        Option(text: "こんにちは", isCorrect: false),
        Option(text: "こんばんは", isCorrect: false),
        Option(text: "お疲れ様です", isCorrect: false),
        Option(text: "ありがとうございます", isCorrect: true),
      ],
    ),
    Quiz(
      text: "잘 자요",
      options: [
        Option(text: "こんにちは", isCorrect: false),
        Option(text: "ありがとう", isCorrect: false),
        Option(text: "おやすみなさい", isCorrect: true),
        Option(text: "お疲れ様です", isCorrect: false),
      ],
    ),
    Quiz(
      text: "수고하셨습니다",
      options: [
        Option(text: "お疲れ様です", isCorrect: true),
        Option(text: "ありがとう", isCorrect: false),
        Option(text: "おやすみ", isCorrect: false),
        Option(text: "こんにちは", isCorrect: false),
      ],
    ),
    Quiz(
      text: "처음 뵙겠습니다",
      options: [
        Option(text: "はじめまして", isCorrect: true),
        Option(text: "おやすみなさい", isCorrect: false),
        Option(text: "ありがとうございます", isCorrect: false),
        Option(text: "こんばんは", isCorrect: false),
      ],
    ),
    Quiz(
      text: "안녕히 가세요",
      options: [
        Option(text: "おはようございます", isCorrect: false),
        Option(text: "こんにちは", isCorrect: false),
        Option(text: "さようなら", isCorrect: true),
        Option(text: "こんばんは", isCorrect: false),
      ],
    ),
    Quiz(
      text: "오랜만입니다",
      options: [
        Option(text: "さようなら", isCorrect: false),
        Option(text: "ありがとうございます", isCorrect: false),
        Option(text: "お疲れ様です", isCorrect: false),
        Option(text: "久しぶりです", isCorrect: true),
      ],
    ),
    Quiz(
      text: "죄송합니다",
      options: [
        Option(text: "こんにちは", isCorrect: false),
        Option(text: "お疲れ様です", isCorrect: false),
        Option(text: "さようなら", isCorrect: false),
        Option(text: "ごめんなさい", isCorrect: true),
      ],
    ),
    Quiz(
      text: "어서 오세요",
      options: [
        Option(text: "ありがとう", isCorrect: false),
        Option(text: "お疲れ様です", isCorrect: false),
        Option(text: "いらっしゃいませ", isCorrect: true),
        Option(text: "こんにちは", isCorrect: false),
      ],
    ),
  ];
}
