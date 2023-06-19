# Project Libraries
- State Management

  - provider => https://pub.dev/packages/provider
  
- Network 
  - dio => https://pub.dev/packages/dio
  - pretty_dio_logger => https://pub.dev/packages/pretty_dio_logger
  
- Test
  - http_mock_adapter => https://pub.dev/packages/http_mock_adapter
  - integration_test:

# Project Layers
- Base 
  - Can be moved from project to project. The structures it contains can be used smoothly in every project.
  
  - In a project based on MVVM architecture, we create the base structures of Model-View-ViewModel layers from here.
 
- Constants 
  - Folder where values that will not change throughout the application and can be used from start to finish are kept.
  
  - Includes Navigation names that will be used by application Path, Enum values, Image constants, Navigation paths.
  
- Extensions
  - Extensions that can be used in every part of the project in terms of clean code mentality are essential.

  - context_extension => the place where values such as width, height, padding, and duration are kept within the application.
  
- Init
  - The place where important controls such as  navigation, network, notifier, and theme are managed for a mobile application.
  
  - navigation => the place where navigation service and navigation routes are provided.
  
  - network => used for managing web scraping operations from websites using Dio
  
  - notifier =>  manages theme changes between dark and light themes with theme notifier.
    
  - abstract =>  only notification of the method can be found within the class. Methods defined like this are called abstract methods and the abstract keyword is used to indicate that a method is abstract. If at least one of the methods within a class is abstract method, the class must also be defined abstract.
  
  - theme => used for managing the application's theme.
  
# View-ViewModel Base  
- After completing the architectural development processes specified in the Project Layers section, we can start filling the views and viewModels of the application in general.
- In this section, we see how we can use our application's views and viewModels in an integrated way with the code we wrote in the base layer.
  
   # ViewModel
     - We create base_model and base_view_model to use in our View-Model and use them in our view-models and views.
     
     - After adding these structures, we integrate our setContext() and init() functions from our base_view_model."
     
    ![SCR-20230619-2ja](https://github.com/alisekerr/nytimes_news_project/assets/77177463/b1b80ebd-5e69-4e77-95b4-56a6b4085d98)


   # View
     - When starting to fill the View section, we first utilize the view_base we developed in the base section.
     - To draw our page, we add our BaseView to the return section, but this BaseView must be derived from the viewModel (e.g.: BaseView<LoginViewModel>())
     - After integrating the BaseView, we start filling in the code we wrote in the base_view section here.
 
     - viewModel => We give the viewModel of the page we drew as explained above.
     - onModelReady => We control the context interaction of the model we gave.
     - onPageBuilder => This is the section where we start drawing our page.
  
  ![SCR-20230619-2ls](https://github.com/alisekerr/nytimes_news_project/assets/77177463/774c01ea-093a-4c37-9be3-7f6902f19eb3)
  
  # Test
    - There are two different test cases in the application.
    - 
    - For integration test, you can perform the UI test of the application with the run function from the file in the integration_test folder :
      ![SCR-20230619-2r3](https://github.com/alisekerr/nytimes_news_project/assets/77177463/53ae891b-38d6-4b3f-b5ae-a9826daec20c)
      
    - For the service test of the application, you can use the news_service_test file in the test folder and perform the service test of the application with the run function :
      ![SCR-20230619-2um](https://github.com/alisekerr/nytimes_news_project/assets/77177463/30161d9d-040d-487b-9aaa-91c4b76b4c36)
      
    - Note: For the response section written in the service test, the values ​​returned at the time the test was written are given. Likewise, for testing the values ​​from the parameters, the "title" parameter entered as an example, and the "title" values ​​from the service at that moment are given. If testing is to be done, it is recommended to regulate the values.
      ![SCR-20230619-2ye](https://github.com/alisekerr/nytimes_news_project/assets/77177463/2f140644-a077-44e9-b189-400e0010e6fd)
      ![SCR-20230619-2yv](https://github.com/alisekerr/nytimes_news_project/assets/77177463/f11f9f4e-660d-4e62-8bda-3490f82d480a)

  # Project

    - In Project :

      ![SCR-20230619-cay](https://github.com/alisekerr/nytimes_news_project/assets/77177463/ce129574-d1a5-463a-9216-77bd35457a51)
  
      ![SCR-20230619-cbd](https://github.com/alisekerr/nytimes_news_project/assets/77177463/84ed58c7-0cef-4019-860e-01e7c64effb7)



