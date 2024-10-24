enum ElementType {
  constructor,
  classObject,
  finalProperty,
  lateProperty,
  getterSetter,
  method;

  String getDisplayName() => switch (this) {
        constructor => 'Constructors',
        classObject => 'Class Objects',
        finalProperty => 'Final Properties',
        lateProperty => 'Late Properties',
        getterSetter => 'Getters or Setters',
        method => 'Methods',
      };
}

// structure of viewModel should be:
// - constructor -- ConstructorDeclarationImpl
// - completions ???
// - repositories -- FieldDeclarationImpl
// - final properties public/private -- FieldDeclarationImpl
// - late properties public/private -- FieldDeclarationImpl
// - get/set properties public/private -- MethodDeclarationImpl
// - methods public/private -- MethodDeclarationImpl