/**
 * Created by singhs10 on 6/30/15.
 */


var fs = require('fs');
var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = require('chai').expect;

//var expect = chai.expect;

module.exports = function() {
    this.Given(/^I am on the homepage$/, function (callback) {
          browser.get('http://localhost/podemo/angular/#/main/welcome');
       // browser.get(this, 'http://localhost:3000/ctrp/angular#/main/organizations', function (result) {
            //  next();
        //browser.waitForAngular();
            setTimeout(callback, 1000);
    //    callback();
      //  });
    });

    this.Then(/^I should see "(.*)" as link$/, function (callback) {
/*var text;
        text = element(by.tagName('html')).getText();
        console.log(text);
        expect(text).to.contain("" + "wild");*/
      //  expect('foo').to.exist;
       // expect(element(by.binding('person.name')).isPresent()).to.become(true);
        browser.waitForAngular();
        expect(element(by.linkText("Organizations")).isPresent()).to.become(true);
      //  console.log(element(by.linkText("Organizations")));
       //expect(element(by.linkText("Organizations")).to.exist);
        //.isPresent()).toBeTruthy();
      //  expect(element(by.linkText("Organizations")).to.equal('Organizations'));
      //  expect(browser.getTitle()).to.eventually.equal('Search').and.notify(callback);
      //  expect(browser.getTitle()).toEqual('Search');
   //     expect('foobar').to.have.string('bar12');
        browser.waitForAngular();
        element(by.linkText("Organizations")).click();
    //   setTimeout(callback, 1000);
   //     element(by.linkText("List of Organizations")).click();
    //    setTimeout(callback, 1000);
    //    element(by.linkText("Add an Organization")).click();
       // setTimeout(callback, 1000);
     //   element(by.linkText("Organizations")).click();
     //   element(by.model('orgsView.searchParams.name')).sendKeys('university*');
      //  findElement(By.linkText("Test Search"));
     //   setTimeout(callback, 100000);
     //  element(by.buttonText("Clear")).click();
        callback;
    });


    this.Then(/^I should see "([^"]*)" on page$/, function (callback) {
        // Write code here that turns the phrase above into concrete actions
        browser.waitForAngular();
        expect(element(by.linkText("Organizations12")).isPresent()).to.become(false);
        browser.waitForAngular();
        element(by.linkText("Home")).click();
      //  element(by.linkText("List of Organizations")).click();
      //  element(by.model('orgsView.searchParams.name')).sendKeys('university*');
      //  element(by.buttonText("Clear")).click();
        callback;
       // setTimeout(callback, 10000);
       // browser.sleep(5000);
       // callback.pending();
    });

}