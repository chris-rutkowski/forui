// GENERATED CODE - DO NOT MODIFY BY HAND

// dart format width=120
// coverage:ignore-file
// ignore_for_file: unnecessary_ignore
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: unrelated_type_equality_checks

part of 'autocomplete_controller.dart';

// **************************************************************************
// ControlGenerator
// **************************************************************************

@internal
extension InternalFAutocompleteControl<T> on FAutocompleteControl<T> {
  FAutocompleteController<T> create(
    VoidCallback callback,
    FutureOr<Iterable<T>> Function(String) filter,
    String Function(T) displayStringForOption,
  ) => createController(filter, displayStringForOption)..addListener(callback);

  (FAutocompleteController<T>, bool) update(
    FAutocompleteControl<T> old,
    FAutocompleteController<T> controller,
    VoidCallback callback,
    FutureOr<Iterable<T>> Function(String) filter,
    String Function(T) displayStringForOption,
  ) => _update(old, controller, callback, filter, displayStringForOption);

  void dispose(FAutocompleteController<T> controller, VoidCallback callback) => _dispose(controller, callback);
}

mixin _$FAutocompleteControlMixin<T> {
  /// Creates a [FAutocompleteController<T>].
  ///
  /// Overriding managed subclasses should always return `controller` if it is non-null, e.g. `return controller ?? MyController();`
  @visibleForOverriding
  FAutocompleteController<T> createController(
    FutureOr<Iterable<T>> Function(String) filter,
    String Function(T) displayStringForOption,
  );
  void _dispose(FAutocompleteController<T> controller, VoidCallback callback);
  // TODO: https://github.com/dart-lang/sdk/issues/62198
  // ignore: unused_element
  FAutocompleteController<T> _default(
    FAutocompleteControl<T> old,
    FAutocompleteController<T> controller,
    VoidCallback callback,
    FutureOr<Iterable<T>> Function(String) filter,
    String Function(T) displayStringForOption,
  ) => controller;
}
mixin _$FAutocompleteManagedControlMixin<T> on Diagnosticable, FAutocompleteControl<T> {
  FAutocompleteController<T>? get controller;
  TextEditingValue? get initial;
  ValueChanged<TextEditingValue>? get onChange;
  @override
  (FAutocompleteController<T>, bool) _update(
    FAutocompleteControl<T> old,
    FAutocompleteController<T> controller,
    VoidCallback callback,
    FutureOr<Iterable<T>> Function(String) filter,
    String Function(T) displayStringForOption,
  ) {
    switch (old) {
      case _ when old == this:
        return (_default(old, controller, callback, filter, displayStringForOption), false);

      // External (Controller A) -> External (Controller B)
      case FAutocompleteManagedControl(controller: final old?) when this.controller != null && this.controller != old:
        controller.removeListener(callback);
        return (createController(filter, displayStringForOption)..addListener(callback), true);

      // Internal -> External
      case FAutocompleteManagedControl(controller: final old) when this.controller != null && old == null:
        controller.dispose();
        return (createController(filter, displayStringForOption)..addListener(callback), true);

      // External -> Internal
      case FAutocompleteManagedControl(controller: _?) when this.controller == null:
        controller.removeListener(callback);
        return (createController(filter, displayStringForOption)..addListener(callback), true);

      // Lifted -> Managed
      case _Lifted():
        controller.dispose();
        return (createController(filter, displayStringForOption)..addListener(callback), true);

      default:
        return (_default(old, controller, callback, filter, displayStringForOption), false);
    }
  }

  @override
  void _dispose(FAutocompleteController<T> controller, VoidCallback callback) {
    if (this.controller != null) {
      controller.removeListener(callback);
    } else {
      controller.dispose();
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('controller', controller, level: .debug))
      ..add(DiagnosticsProperty('initial', initial, level: .debug))
      ..add(DiagnosticsProperty('onChange', onChange, level: .debug));
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FAutocompleteManagedControl<T> &&
          runtimeType == other.runtimeType &&
          controller == other.controller &&
          initial == other.initial &&
          onChange == other.onChange);

  @override
  int get hashCode => controller.hashCode ^ initial.hashCode ^ onChange.hashCode;
}
mixin _$_LiftedMixin<T> on Diagnosticable, FAutocompleteControl<T> {
  TextEditingValue get value;
  ValueChanged<TextEditingValue> get onChange;
  @override
  (FAutocompleteController<T>, bool) _update(
    FAutocompleteControl<T> old,
    FAutocompleteController<T> controller,
    VoidCallback callback,
    FutureOr<Iterable<T>> Function(String) filter,
    String Function(T) displayStringForOption,
  ) {
    switch (old) {
      case _ when old == this:
        return (_default(old, controller, callback, filter, displayStringForOption), false);

      // Lifted (Value A) -> Lifted (Value B)
      case _Lifted() when old.runtimeType == runtimeType:
        _updateController(controller, filter, displayStringForOption);
        return (controller, true);

      // LiftedFoo -> LiftedBar
      case _Lifted():
        controller.dispose();
        return (createController(filter, displayStringForOption)..addListener(callback), true);

      // External -> Lifted
      case FAutocompleteManagedControl(controller: _?):
        controller.removeListener(callback);
        return (createController(filter, displayStringForOption)..addListener(callback), true);

      // Internal -> Lifted
      case FAutocompleteManagedControl():
        controller.dispose();
        return (createController(filter, displayStringForOption)..addListener(callback), true);

      default:
        return (_default(old, controller, callback, filter, displayStringForOption), false);
    }
  }

  void _updateController(
    FAutocompleteController<T> controller,
    FutureOr<Iterable<T>> Function(String) filter,
    String Function(T) displayStringForOption,
  );
  @override
  void _dispose(FAutocompleteController<T> controller, VoidCallback callback) {
    controller.dispose();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('value', value, level: .debug))
      ..add(DiagnosticsProperty('onChange', onChange, level: .debug));
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is _Lifted<T> && runtimeType == other.runtimeType && value == other.value && onChange == other.onChange);

  @override
  int get hashCode => value.hashCode ^ onChange.hashCode;
}
