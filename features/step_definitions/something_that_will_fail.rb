Given(/^User runs this test$/) do
  test_var= true
  if (test_var)
    puts('Ok if user runs this test')

  end
end

Then(/^he should see a failed message$/) do
  fail("Dont worry this is designed to fail")
end