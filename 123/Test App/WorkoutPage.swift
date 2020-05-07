//
//  WorkoutPage.swift
//  123
//
//  Created by denia on 07.05.2020.
//  Copyright © 2020 uelskid. All rights reserved.
//

import SwiftUI

struct WorkoutPageTest: View {
    var workoutsWP: Workout = workoutData[1]
    //var exerciseWP: [Exercise] = exerciseData
    var exercises = exerciseData
    
    var body: some View {
                
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Workout Page")
                        .font(.title)
                    Spacer()
                    ForEach(exerciseData) { exercise in
                        NavigationLink(destination: ExercisePageTest(exercise: exercise)) {
                            ExerciseBar(exercises: exercise)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
        
    }
}

struct WorkoutPageTest_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutPageTest()
    }
}


struct ExerciseBar: View {
    var exercises: Exercise
    
    var body: some View {
        VStack {
            HStack {
                Image(uiImage: exercises.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 60)
                Text(exercises.title)
                Spacer()
            }
        }
    }
}
