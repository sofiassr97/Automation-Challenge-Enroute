import { When } from 'cucumber';
import {  WebDriverUniversity } from '../page-objects';

When('click on the "contact us" button', function(){
  WebDriverUniversity.ContactUstButton().click();
});


When('verify page title which should be "<title>"', function(){
    WebDriverUniversity.submitButton().click();
  });