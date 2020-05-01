Feature: Submit all  required fields and get a correct submission
    I want to veryfy home page is working properly
    and also check if the conctact us form is working

    Background:
        Given the browser is at the "home" page

    Scenario: Open the Web Driver University Home page 
        Then page title should be Web Driver University  "<title>"
        And  verify the "<contact-us>" button exist 

    @correctFill
    Scenario Outline: Filling the Contact us form correctly afert being redirected to a new page
        When click on the "contact us" button
        And  verify page title which should be "<title>"
        Then fill form"<first_name>", "<last_name>", "<email>", "<message>",
        And click on the "submit" button

        Examples:
            | FIRST NAME         | LAST NAME         | EMAIL ADRESS         | COMMENTS             |
            | Sofia              | Sanchez           | sofias@example.com   | This is a test       |
            | Paloma             | Rodriguez         | thisisatest@hi.com   | jbvedevdeyt          |
            | Juan               | Villegas          | test2@whatever.com   | More information     |

    @incorrectFill
    Scenario Outline: Filling the Contact us form incorrectly afert being redirected to a new page
        When click on the "contact us" button
        And  verify page title which should be "<title>"
        Then fill form "<first_name>", "<last_name>", "<email>" and "<message>"
        And click on the "submit" button
        And verify if redirects to a new page with an the error message 

        Examples:
            | FIRST NAME         | LAST NAME         | EMAIL ADRESS         | COMMENTS             |
            | Sofia              |                   | sofias@example.com   | This is a test       |
            |                    | Rodriguez         | thisisatest@hi.com   | jbvedevdeyt          |
            | Juan               | Villegas          | test2oirr.com        | More information     |
            | Sofia              | Sanchez           | sofias@example.com   |                      |
