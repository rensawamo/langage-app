import 'package:core_model/model.dart';

//  basic プラン
class AppQuizData {
  static final List<Quiz> korianBiginnerQuizes = [
    Quiz(
      text: "사람",
      options: [
        Option(text: "人間", isCorrect: true),
        Option(text: "動物", isCorrect: false),
        Option(text: "植物", isCorrect: false),
        Option(text: "星", isCorrect: false),
      ],
    ),
    Quiz(
      text: "우리",
      options: [
        Option(text: "私たち", isCorrect: true),
        Option(text: "彼ら", isCorrect: false),
        Option(text: "彼女", isCorrect: false),
        Option(text: "あなた", isCorrect: false),
      ],
    ),
    Quiz(
      text: "하늘",
      options: [
        Option(text: "空", isCorrect: true),
        Option(text: "大地", isCorrect: false),
        Option(text: "山", isCorrect: false),
        Option(text: "海", isCorrect: false),
      ],
    ),
    Quiz(
      text: "바다",
      options: [
        Option(text: "海", isCorrect: true),
        Option(text: "川", isCorrect: false),
        Option(text: "湖", isCorrect: false),
        Option(text: "池", isCorrect: false),
      ],
    ),
    Quiz(
      text: "꽃",
      options: [
        Option(text: "花", isCorrect: true),
        Option(text: "木", isCorrect: false),
        Option(text: "葉", isCorrect: false),
        Option(text: "果物", isCorrect: false),
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
      text: "사과",
      options: [
        Option(text: "りんご", isCorrect: true),
        Option(text: "ぶどう", isCorrect: false),
        Option(text: "バナナ", isCorrect: false),
        Option(text: "オレンジ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "바나나",
      options: [
        Option(text: "バナナ", isCorrect: true),
        Option(text: "りんご", isCorrect: false),
        Option(text: "ぶどう", isCorrect: false),
        Option(text: "オレンジ", isCorrect: false),
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
      text: "포도",
      options: [
        Option(text: "ぶどう", isCorrect: true),
        Option(text: "りんご", isCorrect: false),
        Option(text: "バナナ", isCorrect: false),
        Option(text: "オレンジ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "시간",
      options: [
        Option(text: "時間", isCorrect: true),
        Option(text: "場所", isCorrect: false),
        Option(text: "距離", isCorrect: false),
        Option(text: "速度", isCorrect: false),
      ],
    ),
    Quiz(
      text: "책",
      options: [
        Option(text: "本", isCorrect: true),
        Option(text: "新聞", isCorrect: false),
        Option(text: "雑誌", isCorrect: false),
        Option(text: "ノート", isCorrect: false),
      ],
    ),
    Quiz(
      text: "문화",
      options: [
        Option(text: "文化", isCorrect: true),
        Option(text: "科学", isCorrect: false),
        Option(text: "芸術", isCorrect: false),
        Option(text: "歴史", isCorrect: false),
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
        Option(text: "学校", isCorrect: true),
        Option(text: "図書館", isCorrect: false),
        Option(text: "病院", isCorrect: false),
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
        Option(text: "歌手", isCorrect: true),
        Option(text: "俳優", isCorrect: false),
        Option(text: "作家", isCorrect: false),
        Option(text: "画家", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사진",
      options: [
        Option(text: "写真", isCorrect: true),
        Option(text: "絵", isCorrect: false),
        Option(text: "彫刻", isCorrect: false),
        Option(text: "映画", isCorrect: false),
      ],
    ),
    Quiz(
      text: "아침",
      options: [
        Option(text: "朝", isCorrect: true),
        Option(text: "昼", isCorrect: false),
        Option(text: "夜", isCorrect: false),
        Option(text: "夕方", isCorrect: false),
      ],
    ),
    Quiz(
      text: "저녁",
      options: [
        Option(text: "夕食", isCorrect: true),
        Option(text: "昼食", isCorrect: false),
        Option(text: "朝食", isCorrect: false),
        Option(text: "間食", isCorrect: false),
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
        Option(text: "土曜日", isCorrect: true),
        Option(text: "日曜日", isCorrect: false),
        Option(text: "月曜日", isCorrect: false),
        Option(text: "水曜日", isCorrect: false),
      ],
    ),
    Quiz(
      text: "지난주",
      options: [
        Option(text: "先週", isCorrect: true),
        Option(text: "今週", isCorrect: false),
        Option(text: "来週", isCorrect: false),
        Option(text: "再来週", isCorrect: false),
      ],
    ),
    Quiz(
      text: "안녕",
      options: [
        Option(text: "こんにちは", isCorrect: true),
        Option(text: "ありがとう", isCorrect: false),
        Option(text: "さようなら", isCorrect: false),
        Option(text: "おはようございます", isCorrect: false),
      ],
    ),
    Quiz(
      text: "감사합니다",
      options: [
        Option(text: "ありがとう", isCorrect: true),
        Option(text: "こんにちは", isCorrect: false),
        Option(text: "お願いします", isCorrect: false),
        Option(text: "さようなら", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사과",
      options: [
        Option(text: "ぶどう", isCorrect: false),
        Option(text: "オレンジ", isCorrect: false),
        Option(text: "リンゴ", isCorrect: true),
        Option(text: "バナナ", isCorrect: false),
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
      text: "가방",
      options: [
        Option(text: "かばん", isCorrect: true),
        Option(text: "帽子", isCorrect: false),
        Option(text: "靴", isCorrect: false),
        Option(text: "コート", isCorrect: false),
      ],
    ),
    Quiz(
      text: "책상",
      options: [
        Option(text: "机", isCorrect: true),
        Option(text: "椅子", isCorrect: false),
        Option(text: "本", isCorrect: false),
        Option(text: "電話", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가구",
      options: [
        Option(text: "家具", isCorrect: true),
        Option(text: "食器", isCorrect: false),
        Option(text: "寝具", isCorrect: false),
        Option(text: "洗濯物", isCorrect: false),
      ],
    ),
    Quiz(
      text: "선물",
      options: [
        Option(text: "プレゼント", isCorrect: true),
        Option(text: "お金", isCorrect: false),
        Option(text: "花", isCorrect: false),
        Option(text: "手紙", isCorrect: false),
      ],
    ),
    Quiz(
      text: "우산",
      options: [
        Option(text: "傘", isCorrect: true),
        Option(text: "コート", isCorrect: false),
        Option(text: "帽子", isCorrect: false),
        Option(text: "靴", isCorrect: false),
      ],
    ),
    Quiz(
      text: "전화",
      options: [
        Option(text: "電話", isCorrect: true),
        Option(text: "テレビ", isCorrect: false),
        Option(text: "コンピュータ", isCorrect: false),
        Option(text: "カメラ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "옷",
      options: [
        Option(text: "服", isCorrect: true),
        Option(text: "帽子", isCorrect: false),
        Option(text: "靴", isCorrect: false),
        Option(text: "バッグ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "손",
      options: [
        Option(text: "手", isCorrect: true),
        Option(text: "足", isCorrect: false),
        Option(text: "目", isCorrect: false),
        Option(text: "耳", isCorrect: false),
      ],
    ),
    Quiz(
      text: "배",
      options: [
        Option(text: "お腹", isCorrect: true),
        Option(text: "胸", isCorrect: false),
        Option(text: "背中", isCorrect: false),
        Option(text: "脚", isCorrect: false),
      ],
    ),
    Quiz(
      text: "숟가락",
      options: [
        Option(text: "スプーン", isCorrect: true),
        Option(text: "ナイフ", isCorrect: false),
        Option(text: "フォーク", isCorrect: false),
        Option(text: "お皿", isCorrect: false),
      ],
    ),
    Quiz(
      text: "여행",
      options: [
        Option(text: "旅行", isCorrect: true),
        Option(text: "出張", isCorrect: false),
        Option(text: "散歩", isCorrect: false),
        Option(text: "移動", isCorrect: false),
      ],
    ),
    Quiz(
      text: "귀",
      options: [
        Option(text: "耳", isCorrect: true),
        Option(text: "目", isCorrect: false),
        Option(text: "口", isCorrect: false),
        Option(text: "鼻", isCorrect: false),
      ],
    ),
    Quiz(
      text: "입",
      options: [
        Option(text: "口", isCorrect: true),
        Option(text: "耳", isCorrect: false),
        Option(text: "目", isCorrect: false),
        Option(text: "鼻", isCorrect: false),
      ],
    ),
    Quiz(
      text: "발",
      options: [
        Option(text: "足", isCorrect: true),
        Option(text: "手", isCorrect: false),
        Option(text: "腕", isCorrect: false),
        Option(text: "頭", isCorrect: false),
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
      text: "편지",
      options: [
        Option(text: "手紙", isCorrect: true),
        Option(text: "雑誌", isCorrect: false),
        Option(text: "新聞", isCorrect: false),
        Option(text: "本", isCorrect: false),
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
        Option(text: "学生", isCorrect: true),
        Option(text: "先生", isCorrect: false),
        Option(text: "医者", isCorrect: false),
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
      text: "사물",
      options: [
        Option(text: "物", isCorrect: true),
        Option(text: "場所", isCorrect: false),
        Option(text: "時間", isCorrect: false),
        Option(text: "人", isCorrect: false),
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
        Option(text: "声", isCorrect: false),
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
        Option(text: "犬", isCorrect: true),
        Option(text: "猫", isCorrect: false),
        Option(text: "鳥", isCorrect: false),
        Option(text: "魚", isCorrect: false),
      ],
    ),
    Quiz(
      text: "바다",
      options: [
        Option(text: "海", isCorrect: true),
        Option(text: "湖", isCorrect: false),
        Option(text: "川", isCorrect: false),
        Option(text: "池", isCorrect: false),
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
        Option(text: "病院", isCorrect: true),
        Option(text: "学校", isCorrect: false),
        Option(text: "銀行", isCorrect: false),
        Option(text: "レストラン", isCorrect: false),
      ],
    ),
    Quiz(
      text: "카메라",
      options: [
        Option(text: "カメラ", isCorrect: true),
        Option(text: "スマートフォン", isCorrect: false),
        Option(text: "テレビ", isCorrect: false),
        Option(text: "コンピュータ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "도서관",
      options: [
        Option(text: "図書館", isCorrect: true),
        Option(text: "学校", isCorrect: false),
        Option(text: "病院", isCorrect: false),
        Option(text: "銀行", isCorrect: false),
      ],
    ),
    Quiz(
      text: "맛있는",
      options: [
        Option(text: "美味しい", isCorrect: true),
        Option(text: "辛い", isCorrect: false),
        Option(text: "苦い", isCorrect: false),
        Option(text: "酸っぱい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "음식",
      options: [
        Option(text: "食べ物", isCorrect: true),
        Option(text: "飲み物", isCorrect: false),
        Option(text: "料理", isCorrect: false),
        Option(text: "野菜", isCorrect: false),
      ],
    ),
    Quiz(
      text: "계란",
      options: [
        Option(text: "卵", isCorrect: true),
        Option(text: "牛乳", isCorrect: false),
        Option(text: "肉", isCorrect: false),
        Option(text: "米", isCorrect: false),
      ],
    ),
    Quiz(
      text: "핸드폰",
      options: [
        Option(text: "携帯電話", isCorrect: true),
        Option(text: "テレビ", isCorrect: false),
        Option(text: "コンピュータ", isCorrect: false),
        Option(text: "ラジオ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "테이블",
      options: [
        Option(text: "テーブル", isCorrect: true),
        Option(text: "椅子", isCorrect: false),
        Option(text: "ベッド", isCorrect: false),
        Option(text: "ソファ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "이야기",
      options: [
        Option(text: "話", isCorrect: true),
        Option(text: "本", isCorrect: false),
        Option(text: "映画", isCorrect: false),
        Option(text: "音楽", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가족",
      options: [
        Option(text: "家族", isCorrect: true),
        Option(text: "友達", isCorrect: false),
        Option(text: "同僚", isCorrect: false),
        Option(text: "隣人", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사진",
      options: [
        Option(text: "写真", isCorrect: true),
        Option(text: "絵", isCorrect: false),
        Option(text: "彫刻", isCorrect: false),
        Option(text: "映画", isCorrect: false),
      ],
    ),
    Quiz(
      text: "마음",
      options: [
        Option(text: "心", isCorrect: true),
        Option(text: "体", isCorrect: false),
        Option(text: "魂", isCorrect: false),
        Option(text: "意識", isCorrect: false),
      ],
    ),
    Quiz(
      text: "화장실",
      options: [
        Option(text: "トイレ", isCorrect: true),
        Option(text: "台所", isCorrect: false),
        Option(text: "浴室", isCorrect: false),
        Option(text: "部屋", isCorrect: false),
      ],
    ),
    Quiz(
      text: "영화",
      options: [
        Option(text: "映画", isCorrect: true),
        Option(text: "ドラマ", isCorrect: false),
        Option(text: "音楽", isCorrect: false),
        Option(text: "本", isCorrect: false),
      ],
    ),
    Quiz(
      text: "음악",
      options: [
        Option(text: "音楽", isCorrect: true),
        Option(text: "歌", isCorrect: false),
        Option(text: "楽器", isCorrect: false),
        Option(text: "コンサート", isCorrect: false),
      ],
    ),
    Quiz(
      text: "책",
      options: [
        Option(text: "本", isCorrect: true),
        Option(text: "新聞", isCorrect: false),
        Option(text: "雑誌", isCorrect: false),
        Option(text: "マンガ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "과일",
      options: [
        Option(text: "果物", isCorrect: true),
        Option(text: "野菜", isCorrect: false),
        Option(text: "肉", isCorrect: false),
        Option(text: "魚", isCorrect: false),
      ],
    ),
    Quiz(
      text: "컵",
      options: [
        Option(text: "カップ", isCorrect: true),
        Option(text: "お皿", isCorrect: false),
        Option(text: "ナイフ", isCorrect: false),
        Option(text: "フォーク", isCorrect: false),
      ],
    ),
    Quiz(
      text: "신발",
      options: [
        Option(text: "靴", isCorrect: true),
        Option(text: "帽子", isCorrect: false),
        Option(text: "ベルト", isCorrect: false),
        Option(text: "バッグ", isCorrect: false),
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
        Option(text: "毎日", isCorrect: true),
        Option(text: "週末", isCorrect: false),
        Option(text: "月曜日", isCorrect: false),
        Option(text: "年間", isCorrect: false),
      ],
    ),
    Quiz(
      text: "저녁",
      options: [
        Option(text: "夕食", isCorrect: true),
        Option(text: "朝食", isCorrect: false),
        Option(text: "昼食", isCorrect: false),
        Option(text: "おやつ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "물",
      options: [
        Option(text: "水", isCorrect: true),
        Option(text: "お茶", isCorrect: false),
        Option(text: "牛乳", isCorrect: false),
        Option(text: "ジュース", isCorrect: false),
      ],
    ),
    Quiz(
      text: "우유",
      options: [
        Option(text: "牛乳", isCorrect: true),
        Option(text: "コーヒー", isCorrect: false),
        Option(text: "紅茶", isCorrect: false),
        Option(text: "お茶", isCorrect: false),
      ],
    ),
    Quiz(
      text: "침대",
      options: [
        Option(text: "ベッド", isCorrect: true),
        Option(text: "ソファ", isCorrect: false),
        Option(text: "椅子", isCorrect: false),
        Option(text: "机", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가방",
      options: [
        Option(text: "バッグ", isCorrect: true),
        Option(text: "財布", isCorrect: false),
        Option(text: "手袋", isCorrect: false),
        Option(text: "傘", isCorrect: false),
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
      text: "옷",
      options: [
        Option(text: "服", isCorrect: true),
        Option(text: "帽子", isCorrect: false),
        Option(text: "靴", isCorrect: false),
        Option(text: "バッグ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "차",
      options: [
        Option(text: "車", isCorrect: true),
        Option(text: "自転車", isCorrect: false),
        Option(text: "バス", isCorrect: false),
        Option(text: "電車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사랑",
      options: [
        Option(text: "愛", isCorrect: true),
        Option(text: "友情", isCorrect: false),
        Option(text: "結婚", isCorrect: false),
        Option(text: "家族", isCorrect: false),
      ],
    ),
    Quiz(
      text: "눈",
      options: [
        Option(text: "雪", isCorrect: true),
        Option(text: "目", isCorrect: false),
        Option(text: "鼻", isCorrect: false),
        Option(text: "口", isCorrect: false),
      ],
    ),
    Quiz(
      text: "꽃",
      options: [
        Option(text: "花", isCorrect: true),
        Option(text: "草", isCorrect: false),
        Option(text: "木", isCorrect: false),
        Option(text: "葉", isCorrect: false),
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
        Option(text: "教室", isCorrect: true),
        Option(text: "図書館", isCorrect: false),
        Option(text: "校庭", isCorrect: false),
        Option(text: "事務室", isCorrect: false),
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
        Option(text: "母", isCorrect: true),
        Option(text: "父", isCorrect: false),
        Option(text: "姉", isCorrect: false),
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
        Option(text: "鉛筆", isCorrect: false),
        Option(text: "消しゴム", isCorrect: false),
        Option(text: "定規", isCorrect: false),
      ],
    ),
    Quiz(
      text: "손",
      options: [
        Option(text: "手", isCorrect: true),
        Option(text: "足", isCorrect: false),
        Option(text: "腕", isCorrect: false),
        Option(text: "頭", isCorrect: false),
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
      text: "편지",
      options: [
        Option(text: "手紙", isCorrect: true),
        Option(text: "雑誌", isCorrect: false),
        Option(text: "新聞", isCorrect: false),
        Option(text: "本", isCorrect: false),
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
        Option(text: "学生", isCorrect: true),
        Option(text: "先生", isCorrect: false),
        Option(text: "医者", isCorrect: false),
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
      text: "사물",
      options: [
        Option(text: "物", isCorrect: true),
        Option(text: "場所", isCorrect: false),
        Option(text: "時間", isCorrect: false),
        Option(text: "人", isCorrect: false),
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
        Option(text: "声", isCorrect: false),
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
        Option(text: "犬", isCorrect: true),
        Option(text: "猫", isCorrect: false),
        Option(text: "鳥", isCorrect: false),
        Option(text: "魚", isCorrect: false),
      ],
    ),
    Quiz(
      text: "바다",
      options: [
        Option(text: "海", isCorrect: true),
        Option(text: "湖", isCorrect: false),
        Option(text: "川", isCorrect: false),
        Option(text: "池", isCorrect: false),
      ],
    ),
    Quiz(
      text: "눈물",
      options: [
        Option(text: "涙", isCorrect: true),
        Option(text: "血", isCorrect: false),
        Option(text: "汗", isCorrect: false),
        Option(text: "唾", isCorrect: false),
      ],
    ),
    Quiz(
      text: "숟가락",
      options: [
        Option(text: "スプーン", isCorrect: true),
        Option(text: "フォーク", isCorrect: false),
        Option(text: "ナイフ", isCorrect: false),
        Option(text: "箸", isCorrect: false),
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
        Option(text: "友達", isCorrect: true),
        Option(text: "家族", isCorrect: false),
        Option(text: "同僚", isCorrect: false),
        Option(text: "先生", isCorrect: false),
      ],
    ),
    Quiz(
      text: "생일",
      options: [
        Option(text: "誕生日", isCorrect: true),
        Option(text: "クリスマス", isCorrect: false),
        Option(text: "年末", isCorrect: false),
        Option(text: "お正月", isCorrect: false),
      ],
    ),
    Quiz(
      text: "거울",
      options: [
        Option(text: "鏡", isCorrect: true),
        Option(text: "窓", isCorrect: false),
        Option(text: "ドア", isCorrect: false),
        Option(text: "テーブル", isCorrect: false),
      ],
    ),
    Quiz(
      text: "꿈",
      options: [
        Option(text: "夢", isCorrect: true),
        Option(text: "希望", isCorrect: false),
        Option(text: "目標", isCorrect: false),
        Option(text: "理想", isCorrect: false),
      ],
    ),
    Quiz(
      text: "자동차",
      options: [
        Option(text: "車", isCorrect: true),
        Option(text: "自転車", isCorrect: false),
        Option(text: "バス", isCorrect: false),
        Option(text: "飛行機", isCorrect: false),
      ],
    ),
    Quiz(
      text: "우산",
      options: [
        Option(text: "傘", isCorrect: true),
        Option(text: "コート", isCorrect: false),
        Option(text: "帽子", isCorrect: false),
        Option(text: "スカーフ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "실수",
      options: [
        Option(text: "間違い", isCorrect: true),
        Option(text: "成功", isCorrect: false),
        Option(text: "失敗", isCorrect: false),
        Option(text: "試み", isCorrect: false),
      ],
    ),
    Quiz(
      text: "일",
      options: [
        Option(text: "仕事", isCorrect: true),
        Option(text: "休息", isCorrect: false),
        Option(text: "勉強", isCorrect: false),
        Option(text: "遊び", isCorrect: false),
      ],
    ),
    Quiz(
      text: "추억",
      options: [
        Option(text: "思い出", isCorrect: true),
        Option(text: "未来", isCorrect: false),
        Option(text: "過去", isCorrect: false),
        Option(text: "現在", isCorrect: false),
      ],
    ),
    Quiz(
      text: "평소",
      options: [
        Option(text: "普段", isCorrect: true),
        Option(text: "今日", isCorrect: false),
        Option(text: "昨日", isCorrect: false),
        Option(text: "明日", isCorrect: false),
      ],
    ),
    Quiz(
      text: "전화",
      options: [
        Option(text: "電話", isCorrect: true),
        Option(text: "メール", isCorrect: false),
        Option(text: "手紙", isCorrect: false),
        Option(text: "FAX", isCorrect: false),
      ],
    ),
    Quiz(
      text: "기쁨",
      options: [
        Option(text: "喜び", isCorrect: true),
        Option(text: "悲しみ", isCorrect: false),
        Option(text: "驚き", isCorrect: false),
        Option(text: "怒り", isCorrect: false),
      ],
    ),
    Quiz(
      text: "화남",
      options: [
        Option(text: "怒る", isCorrect: true),
        Option(text: "喜ぶ", isCorrect: false),
        Option(text: "泣く", isCorrect: false),
        Option(text: "笑う", isCorrect: false),
      ],
    ),
    Quiz(
      text: "추천",
      options: [
        Option(text: "推薦", isCorrect: true),
        Option(text: "評価", isCorrect: false),
        Option(text: "提案", isCorrect: false),
        Option(text: "要求", isCorrect: false),
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
        Option(text: "外国", isCorrect: true),
        Option(text: "国内", isCorrect: false),
        Option(text: "国境", isCorrect: false),
        Option(text: "海外", isCorrect: false),
      ],
    ),
    Quiz(
      text: "관심",
      options: [
        Option(text: "関心", isCorrect: true),
        Option(text: "興味", isCorrect: false),
        Option(text: "注意", isCorrect: false),
        Option(text: "関心事", isCorrect: false),
      ],
    ),
    Quiz(
      text: "신문",
      options: [
        Option(text: "新聞", isCorrect: true),
        Option(text: "雑誌", isCorrect: false),
        Option(text: "書籍", isCorrect: false),
        Option(text: "広告", isCorrect: false),
      ],
    ),
    Quiz(
      text: "행복",
      options: [
        Option(text: "幸せ", isCorrect: true),
        Option(text: "悲しみ", isCorrect: false),
        Option(text: "怒り", isCorrect: false),
        Option(text: "不安", isCorrect: false),
      ],
    ),
    Quiz(
      text: "커피",
      options: [
        Option(text: "コーヒー", isCorrect: true),
        Option(text: "紅茶", isCorrect: false),
        Option(text: "牛乳", isCorrect: false),
        Option(text: "ジュース", isCorrect: false),
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
      text: "사과",
      options: [
        Option(text: "謝罪", isCorrect: false),
        Option(text: "リンゴ", isCorrect: true),
        Option(text: "許可", isCorrect: false),
        Option(text: "承認", isCorrect: false),
      ],
    ),
    Quiz(
      text: "이름",
      options: [
        Option(text: "名前", isCorrect: true),
        Option(text: "姓", isCorrect: false),
        Option(text: "ニックネーム", isCorrect: false),
        Option(text: "称号", isCorrect: false),
      ],
    ),
    Quiz(
      text: "회의",
      options: [
        Option(text: "会議", isCorrect: true),
        Option(text: "協議", isCorrect: false),
        Option(text: "集まり", isCorrect: false),
        Option(text: "打ち合わせ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "공부",
      options: [
        Option(text: "勉強", isCorrect: true),
        Option(text: "研究", isCorrect: false),
        Option(text: "実践", isCorrect: false),
        Option(text: "練習", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가격",
      options: [
        Option(text: "価格", isCorrect: true),
        Option(text: "料金", isCorrect: false),
        Option(text: "費用", isCorrect: false),
        Option(text: "値段", isCorrect: false),
      ],
    ),
    Quiz(
      text: "카메라",
      options: [
        Option(text: "カメラ", isCorrect: true),
        Option(text: "ビデオ", isCorrect: false),
        Option(text: "写真", isCorrect: false),
        Option(text: "映像", isCorrect: false),
      ],
    ),
    Quiz(
      text: "목소리",
      options: [
        Option(text: "声", isCorrect: true),
        Option(text: "音", isCorrect: false),
        Option(text: "歌", isCorrect: false),
        Option(text: "発音", isCorrect: false),
      ],
    ),
    Quiz(
      text: "운동",
      options: [
        Option(text: "運動", isCorrect: true),
        Option(text: "スポーツ", isCorrect: false),
        Option(text: "エクササイズ", isCorrect: false),
        Option(text: "トレーニング", isCorrect: false),
      ],
    ),
    Quiz(
      text: "바지",
      options: [
        Option(text: "ズボン", isCorrect: true),
        Option(text: "シャツ", isCorrect: false),
        Option(text: "ジャケット", isCorrect: false),
        Option(text: "靴下", isCorrect: false),
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
      text: "목요일",
      options: [
        Option(text: "木曜日", isCorrect: true),
        Option(text: "火曜日", isCorrect: false),
        Option(text: "水曜日", isCorrect: false),
        Option(text: "金曜日", isCorrect: false),
      ],
    ),
    Quiz(
      text: "곰",
      options: [
        Option(text: "熊", isCorrect: true),
        Option(text: "狼", isCorrect: false),
        Option(text: "虎", isCorrect: false),
        Option(text: "豚", isCorrect: false),
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
        Option(text: "夏休み", isCorrect: true),
        Option(text: "冬休み", isCorrect: false),
        Option(text: "春休み", isCorrect: false),
        Option(text: "休暇", isCorrect: false),
      ],
    ),
    Quiz(
      text: "여름",
      options: [
        Option(text: "夏", isCorrect: true),
        Option(text: "冬", isCorrect: false),
        Option(text: "春", isCorrect: false),
        Option(text: "秋", isCorrect: false),
      ],
    ),
    Quiz(
      text: "날씨",
      options: [
        Option(text: "天気", isCorrect: true),
        Option(text: "気温", isCorrect: false),
        Option(text: "湿度", isCorrect: false),
        Option(text: "季節", isCorrect: false),
      ],
    ),
    Quiz(
      text: "달",
      options: [
        Option(text: "月", isCorrect: true),
        Option(text: "太陽", isCorrect: false),
        Option(text: "星", isCorrect: false),
        Option(text: "地球", isCorrect: false),
      ],
    ),
    Quiz(
      text: "손님",
      options: [
        Option(text: "客", isCorrect: true),
        Option(text: "店員", isCorrect: false),
        Option(text: "店主", isCorrect: false),
        Option(text: "買い手", isCorrect: false),
      ],
    ),
    Quiz(
      text: "양말",
      options: [
        Option(text: "靴下", isCorrect: true),
        Option(text: "ズボン", isCorrect: false),
        Option(text: "帽子", isCorrect: false),
        Option(text: "シャツ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "산책",
      options: [
        Option(text: "散歩", isCorrect: true),
        Option(text: "ジョギング", isCorrect: false),
        Option(text: "ランニング", isCorrect: false),
        Option(text: "ウォーキング", isCorrect: false),
      ],
    ),
    Quiz(
      text: "이중",
      options: [
        Option(text: "二重", isCorrect: true),
        Option(text: "一重", isCorrect: false),
        Option(text: "三重", isCorrect: false),
        Option(text: "重ねる", isCorrect: false),
      ],
    ),
    Quiz(
      text: "손수건",
      options: [
        Option(text: "ハンカチ", isCorrect: true),
        Option(text: "タオル", isCorrect: false),
        Option(text: "シャツ", isCorrect: false),
        Option(text: "ズボン", isCorrect: false),
      ],
    ),
    Quiz(
      text: "다리",
      options: [
        Option(text: "足", isCorrect: false),
        Option(text: "手", isCorrect: false),
        Option(text: "腕", isCorrect: false),
        Option(text: "脚", isCorrect: true),
      ],
    ),
    Quiz(
      text: "남자",
      options: [
        Option(text: "男", isCorrect: true),
        Option(text: "女", isCorrect: false),
        Option(text: "子供", isCorrect: false),
        Option(text: "おじさん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "여자",
      options: [
        Option(text: "女", isCorrect: true),
        Option(text: "男", isCorrect: false),
        Option(text: "子供", isCorrect: false),
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
        Option(text: "音楽", isCorrect: true),
        Option(text: "歌", isCorrect: false),
        Option(text: "楽器", isCorrect: false),
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
        Option(text: "方法", isCorrect: true),
        Option(text: "手段", isCorrect: false),
        Option(text: "手法", isCorrect: false),
        Option(text: "やり方", isCorrect: false),
      ],
    ),
    Quiz(
      text: "국가",
      options: [
        Option(text: "国家", isCorrect: true),
        Option(text: "政府", isCorrect: false),
        Option(text: "国土", isCorrect: false),
        Option(text: "国民", isCorrect: false),
      ],
    ),
    Quiz(
      text: "전화번호",
      options: [
        Option(text: "電話番号", isCorrect: true),
        Option(text: "住所", isCorrect: false),
        Option(text: "名前", isCorrect: false),
        Option(text: "国", isCorrect: false),
      ],
    ),
    Quiz(
      text: "도착",
      options: [
        Option(text: "到着", isCorrect: true),
        Option(text: "出発", isCorrect: false),
        Option(text: "遅延", isCorrect: false),
        Option(text: "旅行", isCorrect: false),
      ],
    ),
    Quiz(
      text: "시간",
      options: [
        Option(text: "時間", isCorrect: true),
        Option(text: "分", isCorrect: false),
        Option(text: "秒", isCorrect: false),
        Option(text: "時", isCorrect: false),
      ],
    ),
    Quiz(
      text: "연필",
      options: [
        Option(text: "鉛筆", isCorrect: true),
        Option(text: "消しゴム", isCorrect: false),
        Option(text: "ボールペン", isCorrect: false),
        Option(text: "マーカー", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가방",
      options: [
        Option(text: "鞄", isCorrect: true),
        Option(text: "バッグ", isCorrect: false),
        Option(text: "リュック", isCorrect: false),
        Option(text: "かばん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "배우",
      options: [
        Option(text: "俳優", isCorrect: true),
        Option(text: "女優", isCorrect: false),
        Option(text: "歌手", isCorrect: false),
        Option(text: "ダンサー", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사진",
      options: [
        Option(text: "写真", isCorrect: true),
        Option(text: "絵", isCorrect: false),
        Option(text: "イラスト", isCorrect: false),
        Option(text: "スケッチ", isCorrect: false),
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
      text: "얼굴",
      options: [
        Option(text: "顔", isCorrect: true),
        Option(text: "頭", isCorrect: false),
        Option(text: "目", isCorrect: false),
        Option(text: "口", isCorrect: false),
      ],
    ),
    Quiz(
      text: "학교",
      options: [
        Option(text: "学校", isCorrect: true),
        Option(text: "大学", isCorrect: false),
        Option(text: "幼稚園", isCorrect: false),
        Option(text: "教室", isCorrect: false),
      ],
    ),
    Quiz(
      text: "손목시계",
      options: [
        Option(text: "腕時計", isCorrect: true),
        Option(text: "目覚まし時計", isCorrect: false),
        Option(text: "掛け時計", isCorrect: false),
        Option(text: "置き時計", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사과",
      options: [
        Option(text: "りんご", isCorrect: true),
        Option(text: "みかん", isCorrect: false),
        Option(text: "バナナ", isCorrect: false),
        Option(text: "いちご", isCorrect: false),
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
        Option(text: "お風呂", isCorrect: true),
        Option(text: "シャワー", isCorrect: false),
        Option(text: "トイレ", isCorrect: false),
        Option(text: "洗面所", isCorrect: false),
      ],
    ),
    Quiz(
      text: "공원",
      options: [
        Option(text: "公園", isCorrect: true),
        Option(text: "動物園", isCorrect: false),
        Option(text: "遊園地", isCorrect: false),
        Option(text: "庭", isCorrect: false),
      ],
    ),
    Quiz(
      text: "선물",
      options: [
        Option(text: "プレゼント", isCorrect: true),
        Option(text: "贈り物", isCorrect: false),
        Option(text: "贈り与える", isCorrect: false),
        Option(text: "おもちゃ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "우유",
      options: [
        Option(text: "牛乳", isCorrect: true),
        Option(text: "コーヒー", isCorrect: false),
        Option(text: "紅茶", isCorrect: false),
        Option(text: "ジュース", isCorrect: false),
      ],
    ),
    Quiz(
      text: "소금",
      options: [
        Option(text: "塩", isCorrect: true),
        Option(text: "砂糖", isCorrect: false),
        Option(text: "コショウ", isCorrect: false),
        Option(text: "味噌", isCorrect: false),
      ],
    ),
    Quiz(
      text: "청소",
      options: [
        Option(text: "掃除", isCorrect: true),
        Option(text: "洗濯", isCorrect: false),
        Option(text: "料理", isCorrect: false),
        Option(text: "片付け", isCorrect: false),
      ],
    ),
    Quiz(
      text: "신발",
      options: [
        Option(text: "靴", isCorrect: true),
        Option(text: "サンダル", isCorrect: false),
        Option(text: "スニーカー", isCorrect: false),
        Option(text: "ブーツ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "고양이",
      options: [
        Option(text: "猫", isCorrect: true),
        Option(text: "犬", isCorrect: false),
        Option(text: "鳥", isCorrect: false),
        Option(text: "魚", isCorrect: false),
      ],
    ),
    Quiz(
      text: "컴퓨터",
      options: [
        Option(text: "コンピューター", isCorrect: true),
        Option(text: "携帯電話", isCorrect: false),
        Option(text: "テレビ", isCorrect: false),
        Option(text: "ラジオ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "주말",
      options: [
        Option(text: "週末", isCorrect: true),
        Option(text: "平日", isCorrect: false),
        Option(text: "月曜日", isCorrect: false),
        Option(text: "火曜日", isCorrect: false),
      ],
    ),
    Quiz(
      text: "오후",
      options: [
        Option(text: "午後", isCorrect: true),
        Option(text: "午前", isCorrect: false),
        Option(text: "夜", isCorrect: false),
        Option(text: "朝", isCorrect: false),
      ],
    ),
    Quiz(
      text: "시장",
      options: [
        Option(text: "市場", isCorrect: true),
        Option(text: "商店街", isCorrect: false),
        Option(text: "デパート", isCorrect: false),
        Option(text: "スーパー", isCorrect: false),
      ],
    ),
    Quiz(
      text: "공책",
      options: [
        Option(text: "ノート", isCorrect: true),
        Option(text: "本", isCorrect: false),
        Option(text: "教科書", isCorrect: false),
        Option(text: "雑誌", isCorrect: false),
      ],
    ),
    Quiz(
      text: "신문지",
      options: [
        Option(text: "新聞紙", isCorrect: true),
        Option(text: "雑誌", isCorrect: false),
        Option(text: "ノート", isCorrect: false),
        Option(text: "本", isCorrect: false),
      ],
    ),
    Quiz(
      text: "침대",
      options: [
        Option(text: "ベッド", isCorrect: true),
        Option(text: "ソファー", isCorrect: false),
        Option(text: "机", isCorrect: false),
        Option(text: "椅子", isCorrect: false),
      ],
    ),
    Quiz(
      text: "계란",
      options: [
        Option(text: "卵", isCorrect: true),
        Option(text: "鶏肉", isCorrect: false),
        Option(text: "豆腐", isCorrect: false),
        Option(text: "チーズ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "어린이",
      options: [
        Option(text: "子供", isCorrect: true),
        Option(text: "大人", isCorrect: false),
        Option(text: "老人", isCorrect: false),
        Option(text: "赤ちゃん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "닭",
      options: [
        Option(text: "鶏", isCorrect: true),
        Option(text: "鳥", isCorrect: false),
        Option(text: "魚", isCorrect: false),
        Option(text: "牛", isCorrect: false),
      ],
    ),
    Quiz(
      text: "돼지",
      options: [
        Option(text: "豚", isCorrect: true),
        Option(text: "牛", isCorrect: false),
        Option(text: "羊", isCorrect: false),
        Option(text: "鶏", isCorrect: false),
      ],
    ),
    Quiz(
      text: "물고기",
      options: [
        Option(text: "魚", isCorrect: true),
        Option(text: "鳥", isCorrect: false),
        Option(text: "牛", isCorrect: false),
        Option(text: "猫", isCorrect: false),
      ],
    ),
    Quiz(
      text: "감자",
      options: [
        Option(text: "じゃがいも", isCorrect: true),
        Option(text: "人参", isCorrect: false),
        Option(text: "たまねぎ", isCorrect: false),
        Option(text: "にんじん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "양파",
      options: [
        Option(text: "たまねぎ", isCorrect: true),
        Option(text: "じゃがいも", isCorrect: false),
        Option(text: "にんじん", isCorrect: false),
        Option(text: "キャベツ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "당근",
      options: [
        Option(text: "人参", isCorrect: true),
        Option(text: "じゃがいも", isCorrect: false),
        Option(text: "たまねぎ", isCorrect: false),
        Option(text: "にんじん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "감기",
      options: [
        Option(text: "風邪", isCorrect: true),
        Option(text: "胃痛", isCorrect: false),
        Option(text: "頭痛", isCorrect: false),
        Option(text: "腹痛", isCorrect: false),
      ],
    ),
    Quiz(
      text: "키",
      options: [
        Option(text: "身長", isCorrect: true),
        Option(text: "体重", isCorrect: false),
        Option(text: "年齢", isCorrect: false),
        Option(text: "誕生日", isCorrect: false),
      ],
    ),
    Quiz(
      text: "노래",
      options: [
        Option(text: "歌", isCorrect: true),
        Option(text: "音楽", isCorrect: false),
        Option(text: "演奏", isCorrect: false),
        Option(text: "楽器", isCorrect: false),
      ],
    ),
    Quiz(
      text: "자전거",
      options: [
        Option(text: "自転車", isCorrect: true),
        Option(text: "車", isCorrect: false),
        Option(text: "バイク", isCorrect: false),
        Option(text: "トラック", isCorrect: false),
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
      text: "꽃",
      options: [
        Option(text: "花", isCorrect: true),
        Option(text: "木", isCorrect: false),
        Option(text: "草", isCorrect: false),
        Option(text: "葉", isCorrect: false),
      ],
    ),
    Quiz(
      text: "미용실",
      options: [
        Option(text: "美容院", isCorrect: true),
        Option(text: "理髪店", isCorrect: false),
        Option(text: "エステ", isCorrect: false),
        Option(text: "マッサージ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가을",
      options: [
        Option(text: "秋", isCorrect: true),
        Option(text: "春", isCorrect: false),
        Option(text: "夏", isCorrect: false),
        Option(text: "冬", isCorrect: false),
      ],
    ),
    Quiz(
      text: "우산",
      options: [
        Option(text: "傘", isCorrect: true),
        Option(text: "スカーフ", isCorrect: false),
        Option(text: "コート", isCorrect: false),
        Option(text: "靴", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가방",
      options: [
        Option(text: "バッグ", isCorrect: true),
        Option(text: "鞄", isCorrect: false),
        Option(text: "リュック", isCorrect: false),
        Option(text: "財布", isCorrect: false),
      ],
    ),
    Quiz(
      text: "핸드폰",
      options: [
        Option(text: "携帯電話", isCorrect: true),
        Option(text: "スマートフォン", isCorrect: false),
        Option(text: "電話", isCorrect: false),
        Option(text: "カメラ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "눈",
      options: [
        Option(text: "目", isCorrect: false),
        Option(text: "耳", isCorrect: false),
        Option(text: "鼻", isCorrect: false),
        Option(text: "目", isCorrect: true),
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
      text: "이야기",
      options: [
        Option(text: "話", isCorrect: true),
        Option(text: "物語", isCorrect: false),
        Option(text: "小説", isCorrect: false),
        Option(text: "新聞", isCorrect: false),
      ],
    ),
    Quiz(
      text: "마음",
      options: [
        Option(text: "心", isCorrect: true),
        Option(text: "頭", isCorrect: false),
        Option(text: "体", isCorrect: false),
        Option(text: "手", isCorrect: false),
      ],
    ),
    Quiz(
      text: "신호",
      options: [
        Option(text: "信号", isCorrect: true),
        Option(text: "合図", isCorrect: false),
        Option(text: "音", isCorrect: false),
        Option(text: "光", isCorrect: false),
      ],
    ),
    Quiz(
      text: "식품",
      options: [
        Option(text: "食品", isCorrect: true),
        Option(text: "飲み物", isCorrect: false),
        Option(text: "野菜", isCorrect: false),
        Option(text: "果物", isCorrect: false),
      ],
    ),
    Quiz(
      text: "기차",
      options: [
        Option(text: "電車", isCorrect: true),
        Option(text: "汽車", isCorrect: false),
        Option(text: "バス", isCorrect: false),
        Option(text: "自動車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사무실",
      options: [
        Option(text: "事務所", isCorrect: true),
        Option(text: "教室", isCorrect: false),
        Option(text: "部屋", isCorrect: false),
        Option(text: "会議室", isCorrect: false),
      ],
    ),
    Quiz(
      text: "편지",
      options: [
        Option(text: "手紙", isCorrect: true),
        Option(text: "郵便", isCorrect: false),
        Option(text: "封筒", isCorrect: false),
        Option(text: "切手", isCorrect: false),
      ],
    ),
    Quiz(
      text: "전자우편",
      options: [
        Option(text: "Eメール", isCorrect: true),
        Option(text: "手紙", isCorrect: false),
        Option(text: "郵便", isCorrect: false),
        Option(text: "封筒", isCorrect: false),
      ],
    ),
    Quiz(
      text: "영화",
      options: [
        Option(text: "映画", isCorrect: true),
        Option(text: "テレビ", isCorrect: false),
        Option(text: "ドラマ", isCorrect: false),
        Option(text: "漫画", isCorrect: false),
      ],
    ),
    Quiz(
      text: "지하철",
      options: [
        Option(text: "地下鉄", isCorrect: true),
        Option(text: "バス", isCorrect: false),
        Option(text: "電車", isCorrect: false),
        Option(text: "自動車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "카페",
      options: [
        Option(text: "喫茶店", isCorrect: true),
        Option(text: "レストラン", isCorrect: false),
        Option(text: "パン屋", isCorrect: false),
        Option(text: "居酒屋", isCorrect: false),
      ],
    ),
    Quiz(
      text: "지갑",
      options: [
        Option(text: "財布", isCorrect: true),
        Option(text: "バッグ", isCorrect: false),
        Option(text: "カード", isCorrect: false),
        Option(text: "お金", isCorrect: false),
      ],
    ),
    Quiz(
      text: "컵",
      options: [
        Option(text: "カップ", isCorrect: true),
        Option(text: "グラス", isCorrect: false),
        Option(text: "皿", isCorrect: false),
        Option(text: "スプーン", isCorrect: false),
      ],
    ),
    Quiz(
      text: "병원",
      options: [
        Option(text: "病院", isCorrect: true),
        Option(text: "診療所", isCorrect: false),
        Option(text: "クリニック", isCorrect: false),
        Option(text: "薬局", isCorrect: false),
      ],
    ),
    Quiz(
      text: "모자",
      options: [
        Option(text: "帽子", isCorrect: true),
        Option(text: "マフラー", isCorrect: false),
        Option(text: "スカーフ", isCorrect: false),
        Option(text: "コート", isCorrect: false),
      ],
    ),
    Quiz(
      text: "옷",
      options: [
        Option(text: "服", isCorrect: true),
        Option(text: "ズボン", isCorrect: false),
        Option(text: "シャツ", isCorrect: false),
        Option(text: "靴", isCorrect: false),
      ],
    ),
    Quiz(
      text: "도서관",
      options: [
        Option(text: "図書館", isCorrect: true),
        Option(text: "書店", isCorrect: false),
        Option(text: "書斎", isCorrect: false),
        Option(text: "教室", isCorrect: false),
      ],
    ),
    Quiz(
      text: "계란",
      options: [
        Option(text: "たまご", isCorrect: true),
        Option(text: "肉", isCorrect: false),
        Option(text: "野菜", isCorrect: false),
        Option(text: "果物", isCorrect: false),
      ],
    ),
    Quiz(
      text: "집",
      options: [
        Option(text: "家", isCorrect: true),
        Option(text: "アパート", isCorrect: false),
        Option(text: "マンション", isCorrect: false),
        Option(text: "別荘", isCorrect: false),
      ],
    ),
    Quiz(
      text: "방",
      options: [
        Option(text: "部屋", isCorrect: true),
        Option(text: "台所", isCorrect: false),
        Option(text: "トイレ", isCorrect: false),
        Option(text: "浴室", isCorrect: false),
      ],
    ),
    Quiz(
      text: "직업",
      options: [
        Option(text: "仕事", isCorrect: true),
        Option(text: "学生", isCorrect: false),
        Option(text: "教師", isCorrect: false),
        Option(text: "医者", isCorrect: false),
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
      text: "어머니",
      options: [
        Option(text: "母", isCorrect: true),
        Option(text: "父", isCorrect: false),
        Option(text: "息子", isCorrect: false),
        Option(text: "娘", isCorrect: false),
      ],
    ),
    Quiz(
      text: "아버지",
      options: [
        Option(text: "父", isCorrect: true),
        Option(text: "母", isCorrect: false),
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
        Option(text: "お兄さん", isCorrect: false),
        Option(text: "おとうとさん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "형",
      options: [
        Option(text: "兄", isCorrect: true),
        Option(text: "弟", isCorrect: false),
        Option(text: "お兄さん", isCorrect: false),
        Option(text: "おとうとさん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "누이",
      options: [
        Option(text: "妹", isCorrect: true),
        Option(text: "姉", isCorrect: false),
        Option(text: "おばさん", isCorrect: false),
        Option(text: "おじさん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "동생",
      options: [
        Option(text: "妹", isCorrect: true),
        Option(text: "姉", isCorrect: false),
        Option(text: "おばさん", isCorrect: false),
        Option(text: "おじさん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "친구",
      options: [
        Option(text: "友達", isCorrect: true),
        Option(text: "家族", isCorrect: false),
        Option(text: "先生", isCorrect: false),
        Option(text: "上司", isCorrect: false),
      ],
    ),
    Quiz(
      text: "동료",
      options: [
        Option(text: "同僚", isCorrect: true),
        Option(text: "友達", isCorrect: false),
        Option(text: "家族", isCorrect: false),
        Option(text: "先生", isCorrect: false),
      ],
    ),
    Quiz(
      text: "선생님",
      options: [
        Option(text: "先生", isCorrect: true),
        Option(text: "学生", isCorrect: false),
        Option(text: "生徒", isCorrect: false),
        Option(text: "先輩", isCorrect: false),
      ],
    ),
    Quiz(
      text: "학생",
      options: [
        Option(text: "学生", isCorrect: true),
        Option(text: "先生", isCorrect: false),
        Option(text: "生徒", isCorrect: false),
        Option(text: "先輩", isCorrect: false),
      ],
    ),
    Quiz(
      text: "연인",
      options: [
        Option(text: "恋人", isCorrect: true),
        Option(text: "夫婦", isCorrect: false),
        Option(text: "友達", isCorrect: false),
        Option(text: "家族", isCorrect: false),
      ],
    ),
    Quiz(
      text: "부부",
      options: [
        Option(text: "夫婦", isCorrect: true),
        Option(text: "恋人", isCorrect: false),
        Option(text: "友達", isCorrect: false),
        Option(text: "家族", isCorrect: false),
      ],
    ),
    Quiz(
      text: "아이",
      options: [
        Option(text: "子供", isCorrect: true),
        Option(text: "大人", isCorrect: false),
        Option(text: "親", isCorrect: false),
        Option(text: "祖父母", isCorrect: false),
      ],
    ),
    Quiz(
      text: "부모",
      options: [
        Option(text: "親", isCorrect: true),
        Option(text: "子供", isCorrect: false),
        Option(text: "祖父母", isCorrect: false),
        Option(text: "兄弟姉妹", isCorrect: false),
      ],
    ),
    Quiz(
      text: "할아버지",
      options: [
        Option(text: "祖父", isCorrect: true),
        Option(text: "祖母", isCorrect: false),
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
        Option(text: "女の子", isCorrect: false),
        Option(text: "女性", isCorrect: false),
        Option(text: "青年", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사랑",
      options: [
        Option(text: "愛", isCorrect: true),
        Option(text: "恋", isCorrect: false),
        Option(text: "恋愛", isCorrect: false),
        Option(text: "愛情", isCorrect: false),
      ],
    ),
    Quiz(
      text: "눈물",
      options: [
        Option(text: "涙", isCorrect: true),
        Option(text: "血", isCorrect: false),
        Option(text: "汗", isCorrect: false),
        Option(text: "唾液", isCorrect: false),
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
      text: "꿈",
      options: [
        Option(text: "夢", isCorrect: true),
        Option(text: "希望", isCorrect: false),
        Option(text: "現実", isCorrect: false),
        Option(text: "願い", isCorrect: false),
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
        Option(text: "恐怖", isCorrect: true),
        Option(text: "不安", isCorrect: false),
        Option(text: "怒り", isCorrect: false),
        Option(text: "驚き", isCorrect: false),
      ],
    ),
    Quiz(
      text: "행복",
      options: [
        Option(text: "幸せ", isCorrect: true),
        Option(text: "喜び", isCorrect: false),
        Option(text: "愛", isCorrect: false),
        Option(text: "楽しみ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사실",
      options: [
        Option(text: "事実", isCorrect: true),
        Option(text: "真実", isCorrect: false),
        Option(text: "現実", isCorrect: false),
        Option(text: "真理", isCorrect: false),
      ],
    ),
    Quiz(
      text: "진실",
      options: [
        Option(text: "真実", isCorrect: true),
        Option(text: "事実", isCorrect: false),
        Option(text: "現実", isCorrect: false),
        Option(text: "真理", isCorrect: false),
      ],
    ),
    Quiz(
      text: "잔소리",
      options: [
        Option(text: "お説教", isCorrect: true),
        Option(text: "忠告", isCorrect: false),
        Option(text: "批判", isCorrect: false),
        Option(text: "助言", isCorrect: false),
      ],
    ),
    Quiz(
      text: "감사",
      options: [
        Option(text: "感謝", isCorrect: true),
        Option(text: "謝罪", isCorrect: false),
        Option(text: "謝辞", isCorrect: false),
        Option(text: "許し", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사과",
      options: [
        Option(text: "謝罪", isCorrect: true),
        Option(text: "感謝", isCorrect: false),
        Option(text: "謝辞", isCorrect: false),
        Option(text: "許し", isCorrect: false),
      ],
    ),
    Quiz(
      text: "방문",
      options: [
        Option(text: "訪問", isCorrect: true),
        Option(text: "来訪", isCorrect: false),
        Option(text: "訪れる", isCorrect: false),
        Option(text: "訪ねる", isCorrect: false),
      ],
    ),
    Quiz(
      text: "저녁",
      options: [
        Option(text: "夕食", isCorrect: true),
        Option(text: "晩ご飯", isCorrect: false),
        Option(text: "夕べ", isCorrect: false),
        Option(text: "夜", isCorrect: false),
      ],
    ),
    Quiz(
      text: "숙제",
      options: [
        Option(text: "宿題", isCorrect: true),
        Option(text: "仕事", isCorrect: false),
        Option(text: "仕事", isCorrect: false),
        Option(text: "職業", isCorrect: false),
      ],
    ),
    Quiz(
      text: "생각",
      options: [
        Option(text: "考え", isCorrect: true),
        Option(text: "感じ", isCorrect: false),
        Option(text: "聞こえ", isCorrect: false),
        Option(text: "話", isCorrect: false),
      ],
    ),
    Quiz(
      text: "노래방",
      options: [
        Option(text: "カラオケ", isCorrect: true),
        Option(text: "音楽堂", isCorrect: false),
        Option(text: "歌舞伎", isCorrect: false),
        Option(text: "コンサートホール", isCorrect: false),
      ],
    ),
    Quiz(
      text: "잠",
      options: [
        Option(text: "眠り", isCorrect: true),
        Option(text: "休息", isCorrect: false),
        Option(text: "休憩", isCorrect: false),
        Option(text: "睡眠", isCorrect: false),
      ],
    ),
    Quiz(
      text: "소리",
      options: [
        Option(text: "音", isCorrect: true),
        Option(text: "音楽", isCorrect: false),
        Option(text: "音響", isCorrect: false),
        Option(text: "声", isCorrect: false),
      ],
    ),
    Quiz(
      text: "잡지",
      options: [
        Option(text: "雑誌", isCorrect: true),
        Option(text: "新聞", isCorrect: false),
        Option(text: "本", isCorrect: false),
        Option(text: "漫画", isCorrect: false),
      ],
    ),
    Quiz(
      text: "연습",
      options: [
        Option(text: "練習", isCorrect: true),
        Option(text: "練り歩く", isCorrect: false),
        Option(text: "稽古", isCorrect: false),
        Option(text: "実践", isCorrect: false),
      ],
    ),
    Quiz(
      text: "연극",
      options: [
        Option(text: "劇", isCorrect: true),
        Option(text: "映画", isCorrect: false),
        Option(text: "演奏会", isCorrect: false),
        Option(text: "舞台", isCorrect: false),
      ],
    ),
    Quiz(
      text: "평소",
      options: [
        Option(text: "普段", isCorrect: true),
        Option(text: "通常", isCorrect: false),
        Option(text: "平等", isCorrect: false),
        Option(text: "平和", isCorrect: false),
      ],
    ),
    Quiz(
      text: "직장",
      options: [
        Option(text: "職場", isCorrect: true),
        Option(text: "会社", isCorrect: false),
        Option(text: "店", isCorrect: false),
        Option(text: "工場", isCorrect: false),
      ],
    ),
    Quiz(
      text: "손님",
      options: [
        Option(text: "客", isCorrect: true),
        Option(text: "顧客", isCorrect: false),
        Option(text: "訪問者", isCorrect: false),
        Option(text: "見学者", isCorrect: false),
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
      text: "낼",
      options: [
        Option(text: "明日", isCorrect: true),
        Option(text: "昨日", isCorrect: false),
        Option(text: "今日", isCorrect: false),
        Option(text: "毎日", isCorrect: false),
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
        Option(text: "右", isCorrect: true),
        Option(text: "左", isCorrect: false),
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
      text: "아래",
      options: [
        Option(text: "下", isCorrect: true),
        Option(text: "上", isCorrect: false),
        Option(text: "左", isCorrect: false),
        Option(text: "右", isCorrect: false),
      ],
    ),
    Quiz(
      text: "손가락",
      options: [
        Option(text: "指", isCorrect: true),
        Option(text: "手首", isCorrect: false),
        Option(text: "手", isCorrect: false),
        Option(text: "腕", isCorrect: false),
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
        Option(text: "もやし", isCorrect: true),
        Option(text: "ほうれん草", isCorrect: false),
        Option(text: "レタス", isCorrect: false),
        Option(text: "キャベツ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "시금치",
      options: [
        Option(text: "ほうれん草", isCorrect: true),
        Option(text: "もやし", isCorrect: false),
        Option(text: "レタス", isCorrect: false),
        Option(text: "キャベツ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "양배추",
      options: [
        Option(text: "キャベツ", isCorrect: true),
        Option(text: "もやし", isCorrect: false),
        Option(text: "レタス", isCorrect: false),
        Option(text: "ほうれん草", isCorrect: false),
      ],
    ),
    Quiz(
      text: "상추",
      options: [
        Option(text: "レタス", isCorrect: true),
        Option(text: "もやし", isCorrect: false),
        Option(text: "キャベツ", isCorrect: false),
        Option(text: "ほうれん草", isCorrect: false),
      ],
    ),
    Quiz(
      text: "소금",
      options: [
        Option(text: "塩", isCorrect: true),
        Option(text: "砂糖", isCorrect: false),
        Option(text: "醤油", isCorrect: false),
        Option(text: "味噌", isCorrect: false),
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
        Option(text: "味噌", isCorrect: true),
        Option(text: "醤油", isCorrect: false),
        Option(text: "塩", isCorrect: false),
        Option(text: "砂糖", isCorrect: false),
      ],
    ),
    Quiz(
      text: "과자",
      options: [
        Option(text: "菓子", isCorrect: true),
        Option(text: "お菓子", isCorrect: false),
        Option(text: "砂糖", isCorrect: false),
        Option(text: "チョコレート", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사탕",
      options: [
        Option(text: "砂糖", isCorrect: true),
        Option(text: "塩", isCorrect: false),
        Option(text: "醤油", isCorrect: false),
        Option(text: "味噌", isCorrect: false),
      ],
    ),
    Quiz(
      text: "회",
      options: [
        Option(text: "魚介", isCorrect: true),
        Option(text: "魚", isCorrect: false),
        Option(text: "肉", isCorrect: false),
        Option(text: "海鮮", isCorrect: false),
      ],
    ),
    Quiz(
      text: "물고기",
      options: [
        Option(text: "魚", isCorrect: true),
        Option(text: "魚介", isCorrect: false),
        Option(text: "肉", isCorrect: false),
        Option(text: "海鮮", isCorrect: false),
      ],
    ),
    Quiz(
      text: "고기",
      options: [
        Option(text: "肉", isCorrect: true),
        Option(text: "魚", isCorrect: false),
        Option(text: "魚介", isCorrect: false),
        Option(text: "海鮮", isCorrect: false),
      ],
    ),
    Quiz(
      text: "해산물",
      options: [
        Option(text: "海鮮", isCorrect: true),
        Option(text: "魚", isCorrect: false),
        Option(text: "魚介", isCorrect: false),
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
        Option(text: "麺", isCorrect: true),
        Option(text: "パン", isCorrect: false),
        Option(text: "ご飯", isCorrect: false),
        Option(text: "ごはん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "밥",
      options: [
        Option(text: "ご飯", isCorrect: true),
        Option(text: "パン", isCorrect: false),
        Option(text: "麺", isCorrect: false),
        Option(text: "ごはん", isCorrect: false),
      ],
    ),
    Quiz(
      text: "돈가스",
      options: [
        Option(text: "トンカツ", isCorrect: true),
        Option(text: "カツレツ", isCorrect: false),
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
        Option(text: "うどん", isCorrect: true),
        Option(text: "そば", isCorrect: false),
        Option(text: "ラーメン", isCorrect: false),
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
      text: "사진",
      options: [
        Option(text: "写真", isCorrect: true),
        Option(text: "絵", isCorrect: false),
        Option(text: "絵画", isCorrect: false),
        Option(text: "ポスター", isCorrect: false),
      ],
    ),
    Quiz(
      text: "그림",
      options: [
        Option(text: "絵", isCorrect: true),
        Option(text: "写真", isCorrect: false),
        Option(text: "写真", isCorrect: false),
        Option(text: "ポスター", isCorrect: false),
      ],
    ),
    Quiz(
      text: "책상",
      options: [
        Option(text: "机", isCorrect: true),
        Option(text: "椅子", isCorrect: false),
        Option(text: "本棚", isCorrect: false),
        Option(text: "ベッド", isCorrect: false),
      ],
    ),
    Quiz(
      text: "의자",
      options: [
        Option(text: "椅子", isCorrect: true),
        Option(text: "机", isCorrect: false),
        Option(text: "本棚", isCorrect: false),
        Option(text: "ベッド", isCorrect: false),
      ],
    ),
    Quiz(
      text: "책장",
      options: [
        Option(text: "本棚", isCorrect: true),
        Option(text: "机", isCorrect: false),
        Option(text: "椅子", isCorrect: false),
        Option(text: "ベッド", isCorrect: false),
      ],
    ),
    Quiz(
      text: "침대",
      options: [
        Option(text: "ベッド", isCorrect: true),
        Option(text: "椅子", isCorrect: false),
        Option(text: "机", isCorrect: false),
        Option(text: "本棚", isCorrect: false),
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
      text: "저녁",
      options: [
        Option(text: "夕食", isCorrect: true),
        Option(text: "昼食", isCorrect: false),
        Option(text: "朝食", isCorrect: false),
        Option(text: "間食", isCorrect: false),
      ],
    ),
    Quiz(
      text: "아침",
      options: [
        Option(text: "朝食", isCorrect: true),
        Option(text: "昼食", isCorrect: false),
        Option(text: "夕食", isCorrect: false),
        Option(text: "間食", isCorrect: false),
      ],
    ),
    Quiz(
      text: "점심",
      options: [
        Option(text: "昼食", isCorrect: true),
        Option(text: "朝食", isCorrect: false),
        Option(text: "夕食", isCorrect: false),
        Option(text: "間食", isCorrect: false),
      ],
    ),
    Quiz(
      text: "밤",
      options: [
        Option(text: "夜", isCorrect: true),
        Option(text: "朝", isCorrect: false),
        Option(text: "昼", isCorrect: false),
        Option(text: "午後", isCorrect: false),
      ],
    ),
    Quiz(
      text: "낮",
      options: [
        Option(text: "昼", isCorrect: true),
        Option(text: "夜", isCorrect: false),
        Option(text: "朝", isCorrect: false),
        Option(text: "午後", isCorrect: false),
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
        Option(text: "午後", isCorrect: true),
        Option(text: "夜", isCorrect: false),
        Option(text: "昼", isCorrect: false),
        Option(text: "朝", isCorrect: false),
      ],
    ),
    Quiz(
      text: "크기",
      options: [
        Option(text: "サイズ", isCorrect: true),
        Option(text: "大きさ", isCorrect: false),
        Option(text: "大きさ", isCorrect: false),
        Option(text: "容積", isCorrect: false),
      ],
    ),
    Quiz(
      text: "두께",
      options: [
        Option(text: "厚み", isCorrect: true),
        Option(text: "太さ", isCorrect: false),
        Option(text: "広さ", isCorrect: false),
        Option(text: "長さ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "양",
      options: [
        Option(text: "量", isCorrect: true),
        Option(text: "大きさ", isCorrect: false),
        Option(text: "サイズ", isCorrect: false),
        Option(text: "容積", isCorrect: false),
      ],
    ),
    Quiz(
      text: "면적",
      options: [
        Option(text: "広さ", isCorrect: true),
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
      text: "길이",
      options: [
        Option(text: "長さ", isCorrect: true),
        Option(text: "広さ", isCorrect: false),
        Option(text: "高さ", isCorrect: false),
        Option(text: "厚み", isCorrect: false),
      ],
    ),
    Quiz(
      text: "높이",
      options: [
        Option(text: "高さ", isCorrect: true),
        Option(text: "厚み", isCorrect: false),
        Option(text: "太さ", isCorrect: false),
        Option(text: "長さ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "양쪽",
      options: [
        Option(text: "両側", isCorrect: true),
        Option(text: "左右", isCorrect: false),
        Option(text: "右左", isCorrect: false),
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
        Option(text: "影響", isCorrect: true),
        Option(text: "影", isCorrect: false),
        Option(text: "影像", isCorrect: false),
        Option(text: "印象", isCorrect: false),
      ],
    ),
    Quiz(
      text: "인상",
      options: [
        Option(text: "印象", isCorrect: true),
        Option(text: "影", isCorrect: false),
        Option(text: "影響", isCorrect: false),
        Option(text: "影像", isCorrect: false),
      ],
    ),
    Quiz(
      text: "자리",
      options: [
        Option(text: "場所", isCorrect: true),
        Option(text: "座席", isCorrect: false),
        Option(text: "席", isCorrect: false),
        Option(text: "場", isCorrect: false),
      ],
    ),
    Quiz(
      text: "의자",
      options: [
        Option(text: "座席", isCorrect: true),
        Option(text: "場所", isCorrect: false),
        Option(text: "席", isCorrect: false),
        Option(text: "場", isCorrect: false),
      ],
    ),
    Quiz(
      text: "좌석",
      options: [
        Option(text: "席", isCorrect: true),
        Option(text: "場所", isCorrect: false),
        Option(text: "座席", isCorrect: false),
        Option(text: "場", isCorrect: false),
      ],
    ),
    Quiz(
      text: "장소",
      options: [
        Option(text: "場所", isCorrect: true),
        Option(text: "座席", isCorrect: false),
        Option(text: "席", isCorrect: false),
        Option(text: "場", isCorrect: false),
      ],
    ),
    Quiz(
      text: "영화",
      options: [
        Option(text: "映画", isCorrect: true),
        Option(text: "演劇", isCorrect: false),
        Option(text: "ドラマ", isCorrect: false),
        Option(text: "音楽", isCorrect: false),
      ],
    ),
    Quiz(
      text: "극장",
      options: [
        Option(text: "映画館", isCorrect: true),
        Option(text: "劇場", isCorrect: false),
        Option(text: "会場", isCorrect: false),
        Option(text: "スタジオ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "드라마",
      options: [
        Option(text: "ドラマ", isCorrect: true),
        Option(text: "映画", isCorrect: false),
        Option(text: "漫画", isCorrect: false),
        Option(text: "小説", isCorrect: false),
      ],
    ),
    Quiz(
      text: "음악",
      options: [
        Option(text: "音楽", isCorrect: true),
        Option(text: "映画", isCorrect: false),
        Option(text: "ドラマ", isCorrect: false),
        Option(text: "演劇", isCorrect: false),
      ],
    ),
    Quiz(
      text: "대회",
      options: [
        Option(text: "大会", isCorrect: true),
        Option(text: "競争", isCorrect: false),
        Option(text: "試合", isCorrect: false),
        Option(text: "競技", isCorrect: false),
      ],
    ),
    Quiz(
      text: "경쟁",
      options: [
        Option(text: "競争", isCorrect: true),
        Option(text: "大会", isCorrect: false),
        Option(text: "試合", isCorrect: false),
        Option(text: "競技", isCorrect: false),
      ],
    ),
    Quiz(
      text: "경기",
      options: [
        Option(text: "試合", isCorrect: true),
        Option(text: "大会", isCorrect: false),
        Option(text: "競技", isCorrect: false),
        Option(text: "競争", isCorrect: false),
      ],
    ),
    Quiz(
      text: "대항전",
      options: [
        Option(text: "競技", isCorrect: true),
        Option(text: "大会", isCorrect: false),
        Option(text: "試合", isCorrect: false),
        Option(text: "競争", isCorrect: false),
      ],
    ),
    Quiz(
      text: "전쟁",
      options: [
        Option(text: "戦争", isCorrect: true),
        Option(text: "戦闘", isCorrect: false),
        Option(text: "軍隊", isCorrect: false),
        Option(text: "攻撃", isCorrect: false),
      ],
    ),
    Quiz(
      text: "전투",
      options: [
        Option(text: "戦闘", isCorrect: true),
        Option(text: "戦争", isCorrect: false),
        Option(text: "軍隊", isCorrect: false),
        Option(text: "攻撃", isCorrect: false),
      ],
    ),
    Quiz(
      text: "군대",
      options: [
        Option(text: "軍隊", isCorrect: true),
        Option(text: "戦争", isCorrect: false),
        Option(text: "戦闘", isCorrect: false),
        Option(text: "攻撃", isCorrect: false),
      ],
    ),
    Quiz(
      text: "공격",
      options: [
        Option(text: "攻撃", isCorrect: true),
        Option(text: "戦争", isCorrect: false),
        Option(text: "戦闘", isCorrect: false),
        Option(text: "軍隊", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가격",
      options: [
        Option(text: "価格", isCorrect: true),
        Option(text: "料金", isCorrect: false),
        Option(text: "費用", isCorrect: false),
        Option(text: "値段", isCorrect: false),
      ],
    ),
    Quiz(
      text: "요금",
      options: [
        Option(text: "料金", isCorrect: true),
        Option(text: "価格", isCorrect: false),
        Option(text: "費用", isCorrect: false),
        Option(text: "値段", isCorrect: false),
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
        Option(text: "値段", isCorrect: true),
        Option(text: "料金", isCorrect: false),
        Option(text: "価格", isCorrect: false),
        Option(text: "費用", isCorrect: false),
      ],
    ),
    Quiz(
      text: "기억",
      options: [
        Option(text: "記憶", isCorrect: true),
        Option(text: "記録", isCorrect: false),
        Option(text: "思い出", isCorrect: false),
        Option(text: "感じ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "기록",
      options: [
        Option(text: "記録", isCorrect: true),
        Option(text: "記憶", isCorrect: false),
        Option(text: "思い出", isCorrect: false),
        Option(text: "感じ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "추억",
      options: [
        Option(text: "思い出", isCorrect: true),
        Option(text: "記録", isCorrect: false),
        Option(text: "記憶", isCorrect: false),
        Option(text: "感じ", isCorrect: false),
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
      text: "사랑",
      options: [
        Option(text: "愛", isCorrect: true),
        Option(text: "友情", isCorrect: false),
        Option(text: "仲間", isCorrect: false),
        Option(text: "家族", isCorrect: false),
      ],
    ),
    Quiz(
      text: "우정",
      options: [
        Option(text: "友情", isCorrect: true),
        Option(text: "愛", isCorrect: false),
        Option(text: "仲間", isCorrect: false),
        Option(text: "家族", isCorrect: false),
      ],
    ),
    Quiz(
      text: "친구",
      options: [
        Option(text: "友達", isCorrect: true),
        Option(text: "仲間", isCorrect: false),
        Option(text: "家族", isCorrect: false),
        Option(text: "恋人", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가족",
      options: [
        Option(text: "家族", isCorrect: true),
        Option(text: "友達", isCorrect: false),
        Option(text: "仲間", isCorrect: false),
        Option(text: "恋人", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사랑",
      options: [
        Option(text: "愛", isCorrect: true),
        Option(text: "友情", isCorrect: false),
        Option(text: "仲間", isCorrect: false),
        Option(text: "家族", isCorrect: false),
      ],
    ),
    Quiz(
      text: "愛情",
      options: [
        Option(text: "사랑", isCorrect: true),
        Option(text: "友情", isCorrect: false),
        Option(text: "仲間", isCorrect: false),
        Option(text: "家族", isCorrect: false),
      ],
    ),
    Quiz(
      text: "키스",
      options: [
        Option(text: "キス", isCorrect: true),
        Option(text: "抱擁", isCorrect: false),
        Option(text: "手をつなぐ", isCorrect: false),
        Option(text: "握手", isCorrect: false),
      ],
    ),
    Quiz(
      text: "안아주다",
      options: [
        Option(text: "抱擁", isCorrect: true),
        Option(text: "キス", isCorrect: false),
        Option(text: "手をつなぐ", isCorrect: false),
        Option(text: "握手", isCorrect: false),
      ],
    ),
    Quiz(
      text: "잡다",
      options: [
        Option(text: "手をつなぐ", isCorrect: true),
        Option(text: "キス", isCorrect: false),
        Option(text: "抱擁", isCorrect: false),
        Option(text: "握手", isCorrect: false),
      ],
    ),
    Quiz(
      text: "손을 잡다",
      options: [
        Option(text: "手をつなぐ", isCorrect: true),
        Option(text: "キス", isCorrect: false),
        Option(text: "抱擁", isCorrect: false),
        Option(text: "握手", isCorrect: false),
      ],
    ),
    Quiz(
      text: "악수하다",
      options: [
        Option(text: "握手", isCorrect: true),
        Option(text: "キス", isCorrect: false),
        Option(text: "抱擁", isCorrect: false),
        Option(text: "手をつなぐ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "열쇠",
      options: [
        Option(text: "鍵", isCorrect: true),
        Option(text: "ドア", isCorrect: false),
        Option(text: "窓", isCorrect: false),
        Option(text: "カギ", isCorrect: false),
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
      text: "창문",
      options: [
        Option(text: "窓", isCorrect: true),
        Option(text: "ドア", isCorrect: false),
        Option(text: "床", isCorrect: false),
        Option(text: "天井", isCorrect: false),
      ],
    ),
    Quiz(
      text: "바닥",
      options: [
        Option(text: "床", isCorrect: true),
        Option(text: "ドア", isCorrect: false),
        Option(text: "窓", isCorrect: false),
        Option(text: "天井", isCorrect: false),
      ],
    ),
    Quiz(
      text: "천장",
      options: [
        Option(text: "天井", isCorrect: true),
        Option(text: "ドア", isCorrect: false),
        Option(text: "窓", isCorrect: false),
        Option(text: "床", isCorrect: false),
      ],
    ),
    Quiz(
      text: "주방",
      options: [
        Option(text: "台所", isCorrect: true),
        Option(text: "洗面所", isCorrect: false),
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
        Option(text: "洗面所", isCorrect: true),
        Option(text: "浴室", isCorrect: false),
        Option(text: "台所", isCorrect: false),
        Option(text: "客間", isCorrect: false),
      ],
    ),
    Quiz(
      text: "침실",
      options: [
        Option(text: "寝室", isCorrect: true),
        Option(text: "居間", isCorrect: false),
        Option(text: "客間", isCorrect: false),
        Option(text: "台所", isCorrect: false),
      ],
    ),
    Quiz(
      text: "거실",
      options: [
        Option(text: "居間", isCorrect: true),
        Option(text: "寝室", isCorrect: false),
        Option(text: "客間", isCorrect: false),
        Option(text: "台所", isCorrect: false),
      ],
    ),
    Quiz(
      text: "거실",
      options: [
        Option(text: "客間", isCorrect: true),
        Option(text: "寝室", isCorrect: false),
        Option(text: "居間", isCorrect: false),
        Option(text: "台所", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사무실",
      options: [
        Option(text: "事務所", isCorrect: true),
        Option(text: "教室", isCorrect: false),
        Option(text: "教師室", isCorrect: false),
        Option(text: "会議室", isCorrect: false),
      ],
    ),
    Quiz(
      text: "강의실",
      options: [
        Option(text: "教室", isCorrect: true),
        Option(text: "事務所", isCorrect: false),
        Option(text: "教師室", isCorrect: false),
        Option(text: "会議室", isCorrect: false),
      ],
    ),
    Quiz(
      text: "교실",
      options: [
        Option(text: "教室", isCorrect: true),
        Option(text: "事務所", isCorrect: false),
        Option(text: "教師室", isCorrect: false),
        Option(text: "会議室", isCorrect: false),
      ],
    ),
    Quiz(
      text: "교사실",
      options: [
        Option(text: "教師室", isCorrect: true),
        Option(text: "教室", isCorrect: false),
        Option(text: "事務所", isCorrect: false),
        Option(text: "会議室", isCorrect: false),
      ],
    ),
    Quiz(
      text: "회의실",
      options: [
        Option(text: "会議室", isCorrect: true),
        Option(text: "教室", isCorrect: false),
        Option(text: "教師室", isCorrect: false),
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
      text: "목욕",
      options: [
        Option(text: "風呂", isCorrect: true),
        Option(text: "シャワー", isCorrect: false),
        Option(text: "浴槽", isCorrect: false),
        Option(text: "トイレ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "욕조",
      options: [
        Option(text: "浴槽", isCorrect: true),
        Option(text: "シャワー", isCorrect: false),
        Option(text: "風呂", isCorrect: false),
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
      text: "자전거",
      options: [
        Option(text: "自転車", isCorrect: true),
        Option(text: "自動車", isCorrect: false),
        Option(text: "バイク", isCorrect: false),
        Option(text: "電車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "자동차",
      options: [
        Option(text: "自動車", isCorrect: true),
        Option(text: "自転車", isCorrect: false),
        Option(text: "バイク", isCorrect: false),
        Option(text: "電車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "오토바이",
      options: [
        Option(text: "バイク", isCorrect: true),
        Option(text: "自動車", isCorrect: false),
        Option(text: "自転車", isCorrect: false),
        Option(text: "電車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "전차",
      options: [
        Option(text: "電車", isCorrect: true),
        Option(text: "自動車", isCorrect: false),
        Option(text: "バイク", isCorrect: false),
        Option(text: "自転車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "비행기",
      options: [
        Option(text: "飛行機", isCorrect: true),
        Option(text: "自動車", isCorrect: false),
        Option(text: "バイク", isCorrect: false),
        Option(text: "電車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "보트",
      options: [
        Option(text: "船", isCorrect: true),
        Option(text: "飛行機", isCorrect: false),
        Option(text: "バス", isCorrect: false),
        Option(text: "自動車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "자동차",
      options: [
        Option(text: "車", isCorrect: true),
        Option(text: "飛行機", isCorrect: false),
        Option(text: "バス", isCorrect: false),
        Option(text: "船", isCorrect: false),
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
      text: "기차",
      options: [
        Option(text: "電車", isCorrect: true),
        Option(text: "飛行機", isCorrect: false),
        Option(text: "バス", isCorrect: false),
        Option(text: "船", isCorrect: false),
      ],
    ),
    Quiz(
      text: "비행기",
      options: [
        Option(text: "飛行機", isCorrect: true),
        Option(text: "自動車", isCorrect: false),
        Option(text: "バイク", isCorrect: false),
        Option(text: "電車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "배",
      options: [
        Option(text: "船", isCorrect: true),
        Option(text: "飛行機", isCorrect: false),
        Option(text: "バス", isCorrect: false),
        Option(text: "自動車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "차",
      options: [
        Option(text: "車", isCorrect: true),
        Option(text: "自動車", isCorrect: false),
        Option(text: "バイク", isCorrect: false),
        Option(text: "電車", isCorrect: false),
      ],
    ),
    Quiz(
      text: "기타",
      options: [
        Option(text: "他", isCorrect: true),
        Option(text: "その他", isCorrect: false),
        Option(text: "別の", isCorrect: false),
        Option(text: "さらに", isCorrect: false),
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
      text: "모양",
      options: [
        Option(text: "形", isCorrect: true),
        Option(text: "種類", isCorrect: false),
        Option(text: "大きさ", isCorrect: false),
        Option(text: "色", isCorrect: false),
      ],
    ),
    Quiz(
      text: "크기",
      options: [
        Option(text: "大きさ", isCorrect: true),
        Option(text: "形", isCorrect: false),
        Option(text: "種類", isCorrect: false),
        Option(text: "色", isCorrect: false),
      ],
    ),
    Quiz(
      text: "색깔",
      options: [
        Option(text: "色", isCorrect: true),
        Option(text: "形", isCorrect: false),
        Option(text: "種類", isCorrect: false),
        Option(text: "大きさ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "맛",
      options: [
        Option(text: "味", isCorrect: true),
        Option(text: "形", isCorrect: false),
        Option(text: "種類", isCorrect: false),
        Option(text: "大きさ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "모양",
      options: [
        Option(text: "形", isCorrect: true),
        Option(text: "種類", isCorrect: false),
        Option(text: "大きさ", isCorrect: false),
        Option(text: "색깔", isCorrect: false),
      ],
    ),
    Quiz(
      text: "높이",
      options: [
        Option(text: "高さ", isCorrect: true),
        Option(text: "広さ", isCorrect: false),
        Option(text: "長さ", isCorrect: false),
        Option(text: "厚み", isCorrect: false),
      ],
    ),
    Quiz(
      text: "키",
      options: [
        Option(text: "身長", isCorrect: true),
        Option(text: "体重", isCorrect: false),
        Option(text: "年齢", isCorrect: false),
        Option(text: "体温", isCorrect: false),
      ],
    ),
    Quiz(
      text: "체중",
      options: [
        Option(text: "体重", isCorrect: true),
        Option(text: "身長", isCorrect: false),
        Option(text: "年齢", isCorrect: false),
        Option(text: "体温", isCorrect: false),
      ],
    ),
    Quiz(
      text: "나이",
      options: [
        Option(text: "年齢", isCorrect: true),
        Option(text: "身長", isCorrect: false),
        Option(text: "体重", isCorrect: false),
        Option(text: "体温", isCorrect: false),
      ],
    ),
    Quiz(
      text: "온도",
      options: [
        Option(text: "体温", isCorrect: true),
        Option(text: "身長", isCorrect: false),
        Option(text: "体重", isCorrect: false),
        Option(text: "年齢", isCorrect: false),
      ],
    ),
    Quiz(
      text: "살",
      options: [
        Option(text: "年齢", isCorrect: true),
        Option(text: "身長", isCorrect: false),
        Option(text: "体重", isCorrect: false),
        Option(text: "体温", isCorrect: false),
      ],
    ),
    Quiz(
      text: "시간",
      options: [
        Option(text: "時間", isCorrect: true),
        Option(text: "日", isCorrect: false),
        Option(text: "週", isCorrect: false),
        Option(text: "年", isCorrect: false),
      ],
    ),
    Quiz(
      text: "날짜",
      options: [
        Option(text: "日付", isCorrect: true),
        Option(text: "日", isCorrect: false),
        Option(text: "週", isCorrect: false),
        Option(text: "年", isCorrect: false),
      ],
    ),
    Quiz(
      text: "요일",
      options: [
        Option(text: "曜日", isCorrect: true),
        Option(text: "日付", isCorrect: false),
        Option(text: "週", isCorrect: false),
        Option(text: "年", isCorrect: false),
      ],
    ),
    Quiz(
      text: "주",
      options: [
        Option(text: "週", isCorrect: true),
        Option(text: "曜日", isCorrect: false),
        Option(text: "日付", isCorrect: false),
        Option(text: "年", isCorrect: false),
      ],
    ),
    Quiz(
      text: "년",
      options: [
        Option(text: "年", isCorrect: true),
        Option(text: "週", isCorrect: false),
        Option(text: "曜日", isCorrect: false),
        Option(text: "日付", isCorrect: false),
      ],
    ),
    Quiz(
      text: "새벽",
      options: [
        Option(text: "夜明け", isCorrect: true),
        Option(text: "夕方", isCorrect: false),
        Option(text: "昼", isCorrect: false),
        Option(text: "夜", isCorrect: false),
      ],
    ),
    Quiz(
      text: "저녁",
      options: [
        Option(text: "夕方", isCorrect: true),
        Option(text: "夜明け", isCorrect: false),
        Option(text: "昼", isCorrect: false),
        Option(text: "夜", isCorrect: false),
      ],
    ),
    Quiz(
      text: "낮",
      options: [
        Option(text: "昼", isCorrect: true),
        Option(text: "夕方", isCorrect: false),
        Option(text: "夜明け", isCorrect: false),
        Option(text: "夜", isCorrect: false),
      ],
    ),
    Quiz(
      text: "밤",
      options: [
        Option(text: "夜", isCorrect: true),
        Option(text: "夜明け", isCorrect: false),
        Option(text: "昼", isCorrect: false),
        Option(text: "夕方", isCorrect: false),
      ],
    ),
    Quiz(
      text: "참",
      options: [
        Option(text: "本当", isCorrect: true),
        Option(text: "大きい", isCorrect: false),
        Option(text: "真", isCorrect: false),
        Option(text: "偽", isCorrect: false),
      ],
    ),
    Quiz(
      text: "큰",
      options: [
        Option(text: "大きい", isCorrect: true),
        Option(text: "本当", isCorrect: false),
        Option(text: "真", isCorrect: false),
        Option(text: "偽", isCorrect: false),
      ],
    ),
    Quiz(
      text: "진실",
      options: [
        Option(text: "真実", isCorrect: true),
        Option(text: "大きい", isCorrect: false),
        Option(text: "真", isCorrect: false),
        Option(text: "偽", isCorrect: false),
      ],
    ),
    Quiz(
      text: "거짓",
      options: [
        Option(text: "偽", isCorrect: true),
        Option(text: "真実", isCorrect: false),
        Option(text: "真", isCorrect: false),
        Option(text: "大きい", isCorrect: false),
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
        Option(text: "安全", isCorrect: true),
        Option(text: "危険", isCorrect: false),
        Option(text: "事故", isCorrect: false),
        Option(text: "怖い", isCorrect: false),
      ],
    ),
    Quiz(
      text: "사고",
      options: [
        Option(text: "事故", isCorrect: true),
        Option(text: "安全", isCorrect: false),
        Option(text: "危険", isCorrect: false),
        Option(text: "怖い", isCorrect: false),
      ],
    ),
    Quiz(
      text: "무서운",
      options: [
        Option(text: "怖い", isCorrect: true),
        Option(text: "安全", isCorrect: false),
        Option(text: "事故", isCorrect: false),
        Option(text: "危険", isCorrect: false),
      ],
    ),
    Quiz(
      text: "신발",
      options: [
        Option(text: "靴", isCorrect: true),
        Option(text: "ズボン", isCorrect: false),
        Option(text: "シャツ", isCorrect: false),
        Option(text: "帽子", isCorrect: false),
      ],
    ),
    Quiz(
      text: "바지",
      options: [
        Option(text: "ズボン", isCorrect: true),
        Option(text: "靴", isCorrect: false),
        Option(text: "シャツ", isCorrect: false),
        Option(text: "帽子", isCorrect: false),
      ],
    ),
    Quiz(
      text: "셔츠",
      options: [
        Option(text: "シャツ", isCorrect: true),
        Option(text: "靴", isCorrect: false),
        Option(text: "ズボン", isCorrect: false),
        Option(text: "帽子", isCorrect: false),
      ],
    ),
    Quiz(
      text: "모자",
      options: [
        Option(text: "帽子", isCorrect: true),
        Option(text: "靴", isCorrect: false),
        Option(text: "ズボン", isCorrect: false),
        Option(text: "シャツ", isCorrect: false),
      ],
    ),
    Quiz(
      text: "가방",
      options: [
        Option(text: "鞄", isCorrect: true),
        Option(text: "帽子", isCorrect: false),
        Option(text: "靴", isCorrect: false),
        Option(text: "ズボン", isCorrect: false),
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
        Option(text: "眼鏡", isCorrect: true),
        Option(text: "ネクタイ", isCorrect: false),
        Option(text: "時計", isCorrect: false),
        Option(text: "イヤリング", isCorrect: false),
      ],
    ),
    Quiz(
      text: "넥타이",
      options: [
        Option(text: "ネクタイ", isCorrect: true),
        Option(text: "眼鏡", isCorrect: false),
        Option(text: "時計", isCorrect: false),
        Option(text: "イヤリング", isCorrect: false),
      ],
    ),
    Quiz(
      text: "시계",
      options: [
        Option(text: "時計", isCorrect: true),
        Option(text: "眼鏡", isCorrect: false),
        Option(text: "ネクタイ", isCorrect: false),
        Option(text: "イヤリング", isCorrect: false),
      ],
    ),
    Quiz(
      text: "귀걸이",
      options: [
        Option(text: "イヤリング", isCorrect: true),
        Option(text: "眼鏡", isCorrect: false),
        Option(text: "ネクタイ", isCorrect: false),
        Option(text: "時計", isCorrect: false),
      ],
    ),
    Quiz(
      text: "손목시계",
      options: [
        Option(text: "腕時計", isCorrect: true),
        Option(text: "眼鏡", isCorrect: false),
        Option(text: "ネクタイ", isCorrect: false),
        Option(text: "イヤリング", isCorrect: false),
      ],
    ),
    Quiz(
      text: "시계",
      options: [
        Option(text: "時計", isCorrect: true),
        Option(text: "眼鏡", isCorrect: false),
        Option(text: "ネクタイ", isCorrect: false),
        Option(text: "イヤリング", isCorrect: false),
      ],
    ),
    Quiz(
      text: "예쁜",
      options: [
        Option(text: "かわいい", isCorrect: true),
        Option(text: "美しい", isCorrect: false),
        Option(text: "綺麗", isCorrect: false),
        Option(text: "美味しい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "이쁜",
      options: [
        Option(text: "かわいい", isCorrect: true),
        Option(text: "美しい", isCorrect: false),
        Option(text: "綺麗", isCorrect: false),
        Option(text: "美味しい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "아름다운",
      options: [
        Option(text: "美しい", isCorrect: true),
        Option(text: "かわいい", isCorrect: false),
        Option(text: "綺麗", isCorrect: false),
        Option(text: "美味しい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "예뻐요",
      options: [
        Option(text: "かわいい", isCorrect: true),
        Option(text: "美しい", isCorrect: false),
        Option(text: "綺麗", isCorrect: false),
        Option(text: "美味しい", isCorrect: false),
      ],
    ),
    Quiz(
      text: "새",
      options: [
        Option(text: "鳥", isCorrect: true),
        Option(text: "魚", isCorrect: false),
        Option(text: "猫", isCorrect: false),
        Option(text: "犬", isCorrect: false),
      ],
    ),
  ];
}
