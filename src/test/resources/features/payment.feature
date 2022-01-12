Feature: Make a payment different client

 Scenario Outline: Make a payment to three different client
   Given User logged in EriBank Application
   When User make a payment to "<Name>" "<Phone>" "<Country>" and "<Amount>" dollars
   Then User should see their balance drop "<Amount>" dollars
   Examples:
     | Country | Phone | Name  | Amount |
     | USA     | 11223 | test1 | 30.00  |
     | Norway  | 33221 | test2 | 10.00  |
     | Greece  | 22113 | test3 | 20.00  |
