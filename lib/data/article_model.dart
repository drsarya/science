// TODO Implement this library.// TODO Implement this library.// TODO Implement this library.// TODO Implement this library.// TODO Implement this library.// TODO Implement this library.// TODO Implement this library.// TODO Implement this library.// TODO Implement this library.// TODO Implement this library.
//

class Article {
  String title;
  final String shortDescription;
  final String createdBy;
  final String imageAuthor;
  final String imagePath;
  final String description;
  final List<String> hashtags;
  final String createdAt;

  Article(this.title, this.shortDescription, this.createdBy, this.imageAuthor,
      this.imagePath, this.description, this.hashtags, this.createdAt);

  void set newTitle(String newTitle) {
    title = newTitle;
  }
}

// final todos = List.generate(
//   20,
//   (i) => Article(
//       'Тупики с инструментом',
//       'Тупики чешутся палочками',
//       'По материалам пресс-службы МГУ им. М. В. Ломоносова.',
//       'Фото: Дружинин Е.Р.',
//       '/assets/images/image1',
//       "Птицами с орудиями труда сейчас уже никого не удивишь. Не только знаменитые новокаледонские во?роны и попугаи пользуются разнообразными прутиками, палочками и сучками, но и древесные вьюрки, и цапли, и обыкновенные стервятники (эти бьют камнями по страусиным яйцам, чтобы разбить их), и ещё многие другие. Но вот кого никогда не замечали с инструментами в клюве, так это морских птиц – у которых, как считается, для этого слишком маленький мозг.\n\nОднако недавно в PNAS вышла статья, в которой исследователи из Оксфорда вместе с коллегами из Исландии пишут, что орудиями труда пользуются тупики. Несколько лет назад удалось случайно заметить, что тупик взял в клюв прутик и почесал им спину. Впоследствии на видеокамеру удалось снять ещё одного тупика, который также палочкой почесал себе грудь. За тупиками наблюдать непросто, так что, скорее всего, палочками они пользуются чаще, просто зоологам не всегда удаётся это заметить. В пользу того, что оба раза не были случайностью, говорит то, что тупики были из разных колоний, находящихся на расстоянии 1700 км друг от друга. Так что, возможно, использование инструментов среди птиц распространено даже шире, чем нам кажется. При этом тупики остаются пока единственными, у которых манипулирование «орудиями труда» не связано с едой. ",
//       ["птицы", "поведение", "животные"]),
// );
