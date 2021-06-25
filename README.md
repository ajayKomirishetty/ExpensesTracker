- This Rails project is a split wise clone

Description :

- whenever you want to split a bill(restaurant/hotel/trave...) among your friends, you can use this application.
- All you need to do is click on add expense button, select the amount to split, select friends list to split. You good
- Amount specified will split among your friends



- Here is a quicklist of API's that are available.

- Please find the example queries to access all the API's available using postman

https://www.getpostman.com/collections/c52d741e15f96b2c0f8c

NOTE: I am assuming this application is running on http://localhost:3000/. (I will use this url for all my examples)

1. Create User:

Request URL:http://localhost:3000/users
Request Type : POST

Request Body in Json format : 

```JSON
{
    "name" : "test",
    "email":"test@gmail.com"
}
```

Output format in Json:

```JSON
{
    "id": 4,
    "name": "test",
    "email": "test@gmail.com",
    "created_at": "2021-06-24T23:56:54.500Z",
    "updated_at": "2021-06-24T23:56:54.500Z"
}
```

1. Get list of all Users:

Request URL:http://localhost:3000/users
Request Type : GET

Output format in Json:

```JSON
[
    {
        "id": 1,
        "name": "ajay",
        "email": "ajay@gmail.com",
        "created_at": "2021-06-24T00:45:51.700Z",
        "updated_at": "2021-06-24T00:45:51.700Z"
    },
    {
        "id": 2,
        "name": "test",
        "email": "test@gmail.com",
        "created_at": "2021-06-24T15:49:51.173Z",
        "updated_at": "2021-06-24T15:49:51.173Z"
    }
]
```

3. Add an expense and split with friends:

Request URL:http://localhost:3000/expenses
Request Type : POST

```JSON

{   
    "expenseDate":"2021-06-24T00:48:49.259Z",
    "Description" : "shopping at niagara falls",      # Description of the expense
    "category_id" : 2,                                # category to which it belongs to ( name to be displayed in frontend, its related id should be sent to backend)
    "user_id" : 2,                                    # user id who paid the bill  
    "splitWith" : {                                   # list of user id's along with amount to split to be sent as a hash
      "3": 10,                                        # keys are user id's, values are amount to be split
       "1": 300
    }
}
```
4. retrieve amount you will receive from your friends

Request URL: http://localhost:3000/payments
Request Type : GET

```JSON
[
    {
        "PaidBy": 2,
        "Payee": 1,
        "amount": 1200,
        "comments": "pay the remaining amount to your friend",
        "created_at": "2021-06-24T22:51:56.412Z",
        "updated_at": "2021-06-25T00:00:05.195Z"
    },
    {
        "PaidBy": 2,
        "Payee": 3,
        "amount": 40,
        "comments": "pay the remaining amount to your friend",
        "created_at": "2021-06-24T23:41:53.875Z",
        "updated_at": "2021-06-25T00:00:05.151Z"
    }
]
```
