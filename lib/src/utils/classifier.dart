import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:mvvm_linter/src/data/element_type.dart';

class Classifier {
  static ElementType? getElementType(ClassMember member) {
    if (member is FieldDeclaration) {
      if (member.fields.variables.any(
        (element) => element.declaredElement?.type is ClassElement,
      )) {
        return ElementType.classObject;
      }

      if (member.fields.isFinal) return ElementType.finalProperty;
      if (member.fields.isLate) return ElementType.lateProperty;
    } else if (member is MethodDeclaration) {
      if (member.isGetter || member.isSetter) return ElementType.getterSetter;
      return ElementType.method;
    } else if (member is ConstructorDeclaration) {
      return ElementType.constructor;
    }

    return null;
  }

  static bool isNotStatefulOrStateless(ClassDeclaration node) =>
      node.declaredElement?.allSupertypes.any((element) {
        final className =
            node.extendsClause?.superclass.type?.getDisplayString();
        if (className == 'StatefulWidget' || className == 'StatelessWidget') {
          return false;
        }
        return true;
      }) ??
      false;
}
