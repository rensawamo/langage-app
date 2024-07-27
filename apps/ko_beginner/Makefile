
# ex) make test FILE=service_dark_mode_test.dart
.PHONY: test
test:
	patrol test -t integration_test/${FILE} --dart-define=FLAVOR=prod --verbose

.PHONY: group
group:
	patrol test -t  integration_test/group_test.dart  --dart-define=FLAVOR=prod --verbose


