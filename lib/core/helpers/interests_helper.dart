enum Interests {
  all,
  sciFi,
  superheroes,
  music,
  science,
  romance,
  drama,
  mystery,
  school,
  magic,
  action,
  sliceOfLife,
  fantasy,
  comedy,
}

class InterestsHelper {
  static List<String> titles = [
    InterestsHelper.getInterest(Interests.action),
    InterestsHelper.getInterest(Interests.drama),
    InterestsHelper.getInterest(Interests.comedy),
    InterestsHelper.getInterest(Interests.romance),
    InterestsHelper.getInterest(Interests.mystery),
    InterestsHelper.getInterest(Interests.magic),
    InterestsHelper.getInterest(Interests.school),
    InterestsHelper.getInterest(Interests.sliceOfLife),
    InterestsHelper.getInterest(Interests.science),
    InterestsHelper.getInterest(Interests.fantasy),
    InterestsHelper.getInterest(Interests.music),
    InterestsHelper.getInterest(Interests.superheroes),
    InterestsHelper.getInterest(Interests.all),
    InterestsHelper.getInterest(Interests.sciFi),
  ];
  
  static String getInterest(Interests interest) {
    switch (interest) {
      case Interests.all:
        return 'All';
      case Interests.sciFi:
        return 'Sci-Fi';
      case Interests.superheroes:
        return 'Superheroes';
      case Interests.music:
        return 'Music';
      case Interests.science:
        return 'Science';
      case Interests.romance:
        return 'Romance';
      case Interests.drama:
        return 'Drama';
      case Interests.mystery:
        return 'Mystery';
      case Interests.school:
        return 'School';
      case Interests.magic:
        return 'Magic';
      case Interests.action:
        return 'Action';
      case Interests.sliceOfLife:
        return 'Slice of life';
      case Interests.fantasy:
        return 'Fantasy';
      case Interests.comedy:
        return 'Comedy';
    }
  }
}
