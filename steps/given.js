  
import { Given } from 'cucumber';

Given('the browser is at the "home" page', function(){
  browser.url('http://www.webdriveruniversity.com/');
  browser.pause(90000);
});

