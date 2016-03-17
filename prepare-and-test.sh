TEST_CATEGORY=$1

if [ -z "$TEST_CATEGORY" ]; then
    TEST_CATEGORY="Unit"
fi

echo "Tests: $TEST_CATEGORY"

sh prepare.sh
sh test.sh $TEST_CATEGORY
