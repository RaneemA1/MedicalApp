//
//  Arcticles.swift
//  Healthcare
//
//  Created by ٍٍRaneem A on 22/04/1445 AH.
//

import SwiftUI

struct Arcticles: View {
    
    var body: some View {
        
        let  PopularArry = [
        Popular(titile: "Covid-19"),
        Popular(titile: "Diet"),
        Popular(titile: "Fitness"),
        Popular(titile: "Diet")
        ]
        
        var trendingArticles = [
            Trending(image: "1", titile1: "Covid-19", titile2: "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines", date: "Jun 12, 2022", time: "6 min read"),
            Trending(image: "2", titile1: "Covid-19", titile2: "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines", date: "Jun 12, 2022", time: "6 min read"),
            Trending(image: "2", titile1: "Covid-19", titile2: "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines", date: "Jun 12, 2022", time: "6 min read")
        ]
        
        var relatedArticlesArry = [
            
            Related(imageName: "3", titile: "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist", date: "Jun 10, 2022", time: "5min read"),
            Related(imageName: "4", titile: "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist", date: "Jun 10, 2022", time: "5min read"),
            Related(imageName: "5", titile: "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist", date: "Jun 10, 2022", time: "5min read")
        ]
        
       
            
            NavigationStack{
                
                
                VStack(alignment: .leading){
                    Search(titileSearch: "Search articles, news...")
                    Text("Popular Articles")
                        .font(.title3)
                        .bold()
                    
                    ScrollView(.horizontal){
                        HStack(spacing: 50){
                            ForEach(PopularArry) { articles in
                                articles
//                                Image(articles.imageName)
                            }
                            
                        }.padding(.leading,20)
                    }
                    
                    HStack(spacing: 130){
                        Text("Trending Articles")
                            .font(.title3)
                            .bold()
                        Text("See all")
                            .foregroundStyle(.gray1)
                    }
                    
                    ScrollView(.horizontal){
                        HStack(spacing: 20){
                            ForEach(trendingArticles) { article in
                                article
                            }
                        }.padding()
                        
                    }
                    
                    HStack(spacing: 130){
                        Text("Related Articles")
                            .font(.title3)
                            .bold()
                        Text("See all")
                            .foregroundStyle(.green1)
                    }
                    
                    
                    VStack(alignment: .center, spacing: 20){
                        ForEach(relatedArticlesArry) { articles in
                            articles
                        }
                    }.padding(.horizontal)
                    
                    
                }.padding(.horizontal)
                
                    .navigationTitle("Arcticles")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarItems(trailing: Button(action: {}) {Image("dots")})
                
            }
        }
    }



#Preview {
    Arcticles()
}
