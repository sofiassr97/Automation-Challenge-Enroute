import {Then} from 'cucumber';

Then('page title should be Web Driver University ', function(title){
  expect(browser.getTitle()).to.equal(title);
});

Then('fills form {string}, {string}, {string}, {string}',function(first, last, email, comments){
    WebDriverUniversity.firstNameInput().setValue(first);
    WebDriverUniversity.lastNameInput().setValue(last);
    WebDriverUniversity.emailInput().setValue(email);
    WebDriverUniversity.commentsInput().setValue(comments);

});