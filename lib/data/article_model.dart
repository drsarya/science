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
//       '������ � ������������',
//       '������ ������� ���������',
//       '�� ���������� �����-������ ��� ��. �. �. ����������.',
//       '����: �������� �.�.',
//       '/assets/images/image1',
//       "������� � �������� ����� ������ ��� ������ �� �������. �� ������ ���������� ��������������� ��?���� � ������� ���������� �������������� ���������, ��������� � �������, �� � ��������� ������, � �����, � ������������ ����������� (��� ���� ������� �� ���������� �����, ����� ������� ��), � ��� ������ ������. �� ��� ���� ������� �� �������� � ������������� � �����, ��� ��� ������� ���� � � �������, ��� ���������, ��� ����� ������� ��������� ����.\n\n������ ������� � PNAS ����� ������, � ������� ������������� �� �������� ������ � ��������� �� �������� �����, ��� �������� ����� ���������� ������. ��������� ��� ����� ������� �������� ��������, ��� ����� ���� � ���� ������ � ������� �� �����. ������������ �� ����������� ������� ����� ��� ������ ������, ������� ����� �������� ������� ���� �����. �� �������� ��������� ��������, ��� ���, ������ �����, ��������� ��� ���������� ����, ������ �������� �� ������ ������ ��� ��������. � ������ ����, ��� ��� ���� �� ���� ������������, ������� ��, ��� ������ ���� �� ������ �������, ����������� �� ���������� 1700 �� ���� �� �����. ��� ���, ��������, ������������� ������������ ����� ���� �������������� ���� ����, ��� ��� �������. ��� ���� ������ �������� ���� �������������, � ������� ��������������� ��������� ����� �� ������� � ����. ",
//       ["�����", "���������", "��������"]),
// );
