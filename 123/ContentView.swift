//
//  ContentView.swift
//  123
//
//  Created by denia on 07.05.2020.
//  Copyright © 2020 uelskid. All rights reserved.
//

import SwiftUI

struct MainPage: View {
    var workouts = workoutData
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Main Page")
                        .font(.title)
                    Spacer()
                    ForEach(workoutData) { workouts in
                        NavigationLink(destination: WorkoutPageTest(workoutsWP: workouts)) {
                            WorkoutBar(workouts: workouts)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
    }
}

            
struct MainPage_Previews: PreviewProvider {
        static var previews: some View {
            MainPage()
    }
}

struct WorkoutBar: View {
    var workouts: Workout
    
    var body: some View {
        VStack {
            HStack {
                Image(uiImage: workouts.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 60)
                Text(workouts.title)
                Spacer()
            }
        }
    }
}


//структура данных Exercises
struct Exercise: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var howTo: String
    var duration: String
    var image: UIImage
//    var video:
}



//структура данных Workouts
struct Workout: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var image: UIImage
   // var exercises: [Exercise] = exerciseData
}

//структура данных Challenges
struct Challenge: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: UIImage
}




//массив Exercises
var exerciseData = [
    //1
    Exercise(title: "Stretching Eye Wrinkles", description: "For wide opened eye effect follow this massage regularly. It helps to smooth out wrinkles and tissues show the correct position", howTo: "1. Place fingers on the cheek and on the temple\n2. Pull the skin under the eye to the nose\n3. Pull the skin up to the temple\n4. Make five times, then change the eye", duration: "5x for both eyes", image: #imageLiteral(resourceName: "Avatar")),
    //2
    Exercise(title: "Remove The Swelling Of The Eyes", description: "For wide opened eye effect follow this massage regularly. It helps to smooth out wrinkles and tissues show the correct position", howTo: "1. Place fingers on the cheek and on the temple\n2. Pull the skin under the eye to the nose\n3. Pull the skin up to the temple\n4. Make five times, then change the eye", duration: "5x for both eyes", image: #imageLiteral(resourceName: "Avatar")),
    //3
    Exercise(title: "Lift The Skin Around The Eyes", description: "For wide opened eye effect follow this massage regularly. It helps to smooth out wrinkles and tissues show the correct position", howTo: "1. Place fingers on the cheek and on the temple\n2. Pull the skin under the eye to the nose\n3. Pull the skin up to the temple\n4. Make five times, then change the eye", duration: "5x for both eyes", image: #imageLiteral(resourceName: "Avatar")),


]

//массив Workouts
var workoutData: [Workout] = [
    //1
    Workout(title: "Afterparty Face Recovery", description: "For wide opened eye effect follow this massage regularly. It helps to smooth out wrinkles and tissues show the correct position", image: #imageLiteral(resourceName: "Avatar")),
    
    //2
    Workout(title: "Pre Party Face", description: "2For wide opened eye effect follow this massage regularly. It helps to smooth out wrinkles and tissues show the correct position", image: #imageLiteral(resourceName: "Avatar"))




]

//массив Challenges
var challengeData: [Challenge] = []
