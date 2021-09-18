Feature: <API Testing>

  Scenario Outline: Get Users Name
    When send GET request to "https://fakerestapi.azurewebsites.net/api/v1/Users"
    Then send GET request to "http://127.0.0.1:3000/users/1", user name should be "Susan"

  Scenario Outline: Post data
    * Post to service api "<URL>" with '<data>' and I should get the '<expectval>'
    Examples: 
      | URL                         | data                                            | expectval                                       |
      | http://localhost:3000/users | { "id": 3, "name": "Zack", "location": "CHINA"} | { "id": 3, "name": "Zack", "location": "CHINA"} |