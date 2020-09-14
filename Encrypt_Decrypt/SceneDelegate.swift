//
//  SceneDelegate.swift
//  Encrypt_Decrypt
//
//  Created by Dhruv Upadhyay on 14/09/20.
//  Copyright © 2020 Dhruv Upadhyay. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

// public static void main(String[] args) {
//    3             String input = "an apple laaptopp";
//    4            char[] inputArr = input.toCharArray();
//    5            StringBuilder sb = new StringBuilder();
//    6            int count = 1;
//    7            for (int i = 0; i < inputArr.length; i++) {
//        8                if (i < inputArr.length - 1) {
//            9                    if (inputArr[i] == inputArr[i + 1]) {
//                10                        count++;
//                11                        continue;
//                12                    } else {
//                13                        sb.append(inputArr[i]);
//                14                        sb.append(count);
//                15                        count = 1;
//                16                    }
//            17                } else {
//            18                    sb.append(inputArr[i]);
//            19                    sb.append(count);
//            20                    count = 1;
//            21                }
//        22            }
//    23            System.out.print(sb.toString());
//    24        }

//private void encyptTheData(String decrypted) {
//       char[] encryptedChars= new char[decrypted.length()];
//
//       for(int i=0; i<decrypted.length(); i++){
//           encryptedChars[i] = decrypted.charAt(i);
//       }
//
//       for(int i=0; i<encryptedChars.length;i++){
//           if(((i+1) < encryptedChars.length) && Character.isDigit(encryptedChars[i+1])){
//               if(Integer.parseInt(String.valueOf(encryptedChars[i+1])) == 2){
//                   decodedString = decodedString + String.valueOf(encryptedChars[i]) + String.valueOf(encryptedChars[i]);
//               }else{
//                   decodedString = decodedString + String.valueOf(encryptedChars[i]);
//               }
//               i++;
//           }else{
//               decodedString = decodedString + String.valueOf(encryptedChars[i]);
//           }
//       }
//       tvConvertedText.setText(decodedString);
//   }

//private static String decryptString(String input) {
//       char[] inputArr = input.toCharArray();
//       StringBuilder sb = new StringBuilder();
//       for(int i=0;i<inputArr.length; i++ ) {
//           if (i < inputArr.length-1 ) {
//               if(String.valueOf(inputArr[i]).equalsIgnoreCase(" ")) {
//                   sb.append(" ");
//               }else {
//                   if(((int)inputArr[i])>48 && ((int)inputArr[i])<=57) {
//                       for(int j =0;j< Integer.parseInt(String.valueOf(inputArr[i])); j++) {
//                           sb.append(inputArr[i-1]);
//                       }
//                   }
//               }
//           }else {
//               if(((int)inputArr[i])>48 && ((int)inputArr[i])<=57) {
//                   for(int j =0;j< Integer.parseInt(String.valueOf(inputArr[i])); j++) {
//                       sb.append(inputArr[i-1]);
//                   }
//               }
//           }
//       }
//       return sb.toString();
//   }
