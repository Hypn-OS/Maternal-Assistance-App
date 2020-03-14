[![HitCount](http://hits.dwyl.io/Hypn-OS/Maternal-Assistance-App.svg)](http://hits.dwyl.io/Hypn-OS/Maternal-Assistance-App)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](/LICENSE) 
[![](https://img.shields.io/badge/</>%20With%20❤️%20By-Hypnos-red)](https://github.com/Hypn-OS)
![GitHub stars](https://img.shields.io/github/stars/Hypn-OS/Maternal-Assistance-App?style=social)
 
                                        __  __                    
                                       |  \/  |   /\        /\    
                                       | \  / |  /  \      /  \   
                                       | |\/| | / /\ \    / /\ \  
                                       | |  | |/ ____ \  / ____ \ 
                                       |_|  |_/_/    \_\/_/    \_\


![Logo](assets/MAA.png)

This is the official code repository for Hypnos . This type of application was developed during [HaXplore](https://codefest.tech/haxplore), the on-campus event conducted by Codefest, the annual departmental fest of Computer Science department, IIT BHU Varanasi.

# Team Members :triangular_flag_on_post:
1. [Ayush Bhardwaj](https://github.com/hastagAB)
2. [Sahil Jha](https://github.com/sjha2048) 
3. [Kaushlendra Pratap](https://github.com/Kaushl2208)

# MAA(Maternal Assistance App) :baby_symbol:
India is highly populated and it needs effective healthcare accessible to all. Maternal Assistance App(MAA) provides Indian mothers to get regular & instant assistance during the pregnancy and the parenting phase. It is a personalized healthcare app especially for maternal assistance which can provide instant but effective help whenever and wherever needed. In this fast-growing technical world, a mobile device is something that is so close to everyone and having a virtual assistant during pregnancy and parenting phase is like a boon for Mankind. 


# Problem Statment :heavy_exclamation_mark:
- India is highly populated and it needs effective healthcare accessible to all. 
- In Indian culture, the relationship between the mother and her child is considered to be the purest of all. So the family cannot compromise with the health care of both the baby and the mother. 
- There are few apps available in the market but none of them are designed and developed according to the need of an Indian mother.
- It is not feasible for a mother to interact with the doctor every time with each and every minute details and help. 
- The post-pregnancy phase is also as essential as the pregnancy phase and needs special assistance for the mother and her child's overall development.
- The parents in rural areas usually are not aware of the basic information regarding pregnancy and parenting phase. 
- There are various government healthcare institutes and schemes available but is not properly promoted and available among the needed citizens. 

# Solution Proposed :heavy_check_mark:
MAA (Maternal Assistance App) developed by Hypnos is specially designed for Indian Parents to get regular & instant assistance during the pregnancy and the parenting phase. 
### The app is having the following features : 
- The app will notify about the daily development of the child. According to the expected delivery date, it will generate the whole timeline. 
- A list of hospitals available near the mother can be looked upon. 
- Post-delivery, the vaccination details with the time and availability in the nearest hospital will be provided. 
- A perfect and seasonal diet chart verified by the doctor will be provided according to per the needs of the mother (Pregnancy and post-pregnancy period).
- Various common symptoms and its cure can be easily informed via the app.
- The proposed checkup dates and medicines reminder will be notified by the app.
- Various government schemes can be conveyed through the app for the better reach among the needed people. 
- The workout tutorials suitable for the mother according to the pregnancy and post-pregnancy period will be provided for the healthiness of the mother and her child.
- A local community section can be created so that the mothers can connect with others going the same phase.

# Target User :pushpin:
- As a parent(Mother or Father) you can get instant assistance for your child healthcare with all the features mentioned above.
- A Doctor can join with their account to provide medical advice and help.
- A medical helper (Nurse, ASHA, etc)can also join to provide some guidance.
- Parents of a fully grown child can share some insights or their experiences.

# Technical Details 🔧
### Tech Stack : 
- Flutter (For app development)
- Dart, Objective-C, Java
- Redux
- Firebase (For Backend Services)
- Google Map API

Flutter will be used for UI/UX and making a cross-platform application which will work seamlessly on Android and iOS, basic backend operations will be carried with the help of Dart while the complex services will be handled on Firebase like firestore for a secure and consistent database, fireauth for secure authentication.
Redux will be used for state management will make sure that the app doesn’t crash because we aim to provide a seamless experience to the user, for making the application highly scalable. We will be using several APIs for functions like locating the nearest hospital.

# To Test 👨‍💻
- Install Flutter --> [Steps for Installation](https://flutter.dev/docs/get-started/install)
- run `flutter run`

# Screens :computer:
![Login/Signup](files/Login.gif)
![Profile](files/Profile.gif)
![Dashboard](files/Dashboard.gif)



# Note :clipboard:
For running and building the app properly you have to use the geo-location API key in 

```
android/app/src/main/AndroidManifest.xml
```


# 📜 License
This Project is licensed under the [Apache-2.0](/LICENSE) © [HypnOS](https://github.com/Hypn-OS).
