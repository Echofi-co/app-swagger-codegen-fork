String sortImports(Iterable<String> imports) {
  bool isPackageImport(String import) {
    return import.startsWith("import 'package:");
  }

  int compareImport(String a, String b) {
    if (isPackageImport(a)) {
      if (isPackageImport(b)) {
        return a.compareTo(b);
      } else {
        return -1;
      }
    } else if (isPackageImport(b)) {
      return 1;
    } else {
      return a.compareTo(b);
    }
  }

  return (imports.toList()..sort(compareImport)).join('\n');
}
