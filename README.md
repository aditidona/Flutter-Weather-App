# Clima:smile: The Weather App
![Finished App]clima-demo.gif

## Flutter Libraries Used:
    1. Location
    2. Http 
    3. SpinKit
    4. TextFeild


## Learnings
1. Location Package:
[Flutter Location package](https://pub.dev/packages/location/) to get current location coordinates. The geolocator package was too slow to get the output.
2. Stateful widget Lifecycle
    1. There are three stages in the lifecycle. 
        1. **Init**: which is called as soon as the stateful widget is created and added into the tree.
        2. **Build**: This is called when the stateful widget is build
        3. **Deactivate**: this is called when the stateful widget is destroyed.
3. Exception Handling in Dart:
    1. try{}, catch(e), throw "(exception desc)"
        ```
            try
            {
                throw "This is the error message"
            }
            catch(exception or e)
        ```

4. Null Aware Operator:
    1. Used to provide a default value to someVariable.
        ```
            someVariable ?? defaultValue
            
        ```
5. APIs:
    1. Application Program Interface is a set of commands, functions, protocols, and objects that programmers can use to create software, or interact with an external system.
    2. Its a mediater between you and the one you're talking with. For Example 
        > Having a bank teller. Where it asks you,
        "can I help you?"
        "I'd like to withdraw a hundred pounds". 
        And then it asks you what's your password. 
         So here's my password. Here's my API key.
         And if that matches with an account that they have at the bank then they'll say, "Well, here you go. Here's your a hundred pounds that you demanded.".
         So in this case, that bank teller, that interface between you and the safe, that is the API.
    3. So, Basically enforces some rules on your request that you have to abide by.
    
6. Http library:
    1. We make get or request from an API using this library in flutter.
    2. Description of Responses starting from:
        - 1XX: Hold on, Something is processing.
        - 2XX: Here you go, went successfully.
        - 3XX: Go Away! You're not authorized to view this resource.
        - 4XX: You Screwed up.
        - 5XX: I Screwed Up. The Server!
7. Response format of data returned By APIs:
    1. Xtensive Markup Language(XML)
        ```
            <key>value<\key>
        ```
    2. JavaScript Object Notation (JSON)
        ```
            { key : Value }
        ```
8. Getting Json Response into the App.
    ```
        import 'dart:convert';
        String data = response.body;

        var temp = jsonDecode(data)['main']['temp'];  
        var id =jsonDecode(data)['weather'][0]['id'];
        var city = jsonDecode(data)['name']; 

    ```
    They return a dynamic datatype i.e. their type is known only after there value is fetched. thats why we have kept it 'var'

9. Adding a Loading Bar Using Flutter SpinKit Library.

10. TextFeild to take custom CityName from the user.







    
    

