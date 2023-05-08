# :door: User registration and authentication Rails API APP 
Designed as a REST-ful API with JSON only responses, there are no views.

## Specs
- Users are able to register with a username, email address and password (no requirements to send a confirmation email). 
- Users are able to authenticate with their username and password.
- When a user is successfully authenticated, the API needs to respond with a unique user token.  

| Endpoint | Verb | Description |
| :--- | :----: | ---: |
| /users | GET | Returns all users |
| /users/id | GET | Returns specific user |
| /auth/register | POST | Creates user |
| /auth/login | POST | User login |


## Screenshots of the API's responses (Postman):  
### User can register with username, email and password
![Screenshot 2022-10-02 at 19 07 03](https://user-images.githubusercontent.com/10349072/193469131-809f1b7c-bf0e-4cde-8d0f-0cdf0c3eb36a.png)
### Index - all users
![Screenshot 2022-10-02 at 18 36 43](https://user-images.githubusercontent.com/10349072/193467992-823244ae-7e6d-4f79-8ea2-83bf83742ba9.png)
### Show specific user
![Screenshot 2022-10-02 at 18 37 01](https://user-images.githubusercontent.com/10349072/193468122-255b659a-55ce-41e6-a94a-8696dfcb2cb4.png)
### User can't log in with incorrect password
![Screenshot 2022-10-02 at 18 34 10](https://user-images.githubusercontent.com/10349072/193468158-67597396-e5d7-4aa5-8388-5e6d2e5cdb5a.png)
### User token in response when logged in with correct password
![image](https://user-images.githubusercontent.com/10349072/193468297-2ad83989-237f-4006-b740-66c82029004a.png)


