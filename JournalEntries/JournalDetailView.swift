//
//  JournalDetailVIew.swift
//  JournalEntries
//
//  Created by Jack Kelley on 12/19/23.
//

import SwiftUI

struct JournalDetailView: View {
    
    let journalEntry: JournalEntry
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    
                    Spacer()
                }
                
             
                HStack {
                    Text(journalEntry.date, style: .date)
                        .bold()
                    Text(" - ")
                    Text(String(repeating: "⭐️", count: journalEntry.rating))
                    Spacer()
                }.padding([.bottom], 10)
                
                Text("\(journalEntry.text)")
                
                            }.navigationTitle("\(journalEntry.title)")
                .padding()
        }
        
    }
}

#Preview {
    NavigationStack {
        JournalDetailView(journalEntry: JournalEntry(title: "First Journal Entry!", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Semper risus in hendrerit gravida. Duis convallis convallis tellus id interdum velit laoreet id donec. Aliquam id diam maecenas ultricies mi. Proin libero nunc consequat interdum. Augue lacus viverra vitae congue. Sed turpis tincidunt id aliquet risus feugiat. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Elementum nibh tellus molestie nunc non. Sit amet cursus sit amet dictum sit amet. Viverra maecenas accumsan lacus vel facilisis. Amet porttitor eget dolor morbi non arcu risus. Convallis convallis tellus id interdum. Vestibulum sed arcu non odio euismod lacinia at quis. Massa eget egestas purus viverra accumsan in nisl nisi scelerisque. Ac placerat vestibulum lectus mauris ultrices. Erat nam at lectus urna.Sit amet volutpat consequat mauris nunc congue nisi vitae suscipit. Sit amet purus gravida quis blandit turpis cursus. At auctor urna nunc id cursus metus. Adipiscing commodo elit at imperdiet dui accumsan sit amet nulla. Sapien nec sagittis aliquam malesuada bibendum arcu vitae elementum. Amet justo donec enim diam vulputate. Felis bibendum ut tristique et egestas quis. Bibendum est ultricies integer quis auctor. Et malesuada fames ac turpis egestas integer eget aliquet nibh. Leo in vitae turpis massa sed elementum tempus. Feugiat nibh sed pulvinar proin gravida hendrerit lectus. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum sociis. Consectetur adipiscing elit duis tristique sollicitudin. Eleifend donec pretium vulputate sapien nec. Ornare lectus sit amet est placerat in egestas. A arcu cursus vitae congue. Volutpat consequat mauris nunc congue nisi. Quis vel eros donec ac odio. Diam in arcu cursus euismod.Interdum posuere lorem ipsum dolor sit amet. Facilisi cras fermentum odio eu feugiat. Interdum posuere lorem ipsum dolor sit amet. Aenean sed adipiscing diam donec. Nec ultrices dui sapien eget mi proin sed libero. Odio ut enim blandit volutpat maecenas volutpat blandit aliquam etiam. Pellentesque elit eget gravida cum sociis natoque penatibus. Nisl condimentum id venenatis a condimentum vitae. Nec tincidunt praesent semper feugiat nibh sed pulvinar. Consectetur lorem donec massa sapien. Eu feugiat pretium nibh ipsum consequat.Massa sapien faucibus et molestie. Gravida cum sociis natoque penatibus et magnis. Tristique senectus et netus et. Ridiculus mus mauris vitae ultricies leo integer malesuada nunc. Amet consectetur adipiscing elit ut aliquam purus sit amet luctus. Dui nunc mattis enim ut tellus. Ac turpis egestas maecenas pharetra. Nisl tincidunt eget nullam non nisi est. Adipiscing elit duis tristique sollicitudin nibh sit amet commodo. Facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris. Leo integer malesuada nunc vel risus commodo. Aliquet nibh praesent tristique magna sit amet.Ipsum a arcu cursus vitae congue mauris rhoncus aenean. Morbi non arcu risus quis varius quam. Auctor neque vitae tempus quam. Amet volutpat consequat mauris nunc congue nisi vitae suscipit. Sed vulputate odio ut enim blandit. Dolor sit amet consectetur adipiscing elit pellentesque habitant. Sed odio morbi quis commodo. Morbi blandit cursus risus at ultrices. Congue nisi vitae suscipit tellus mauris a diam. Neque egestas congue quisque egestas diam in arcu cursus. Massa sed elementum tempus egestas sed sed. Vel quam elementum pulvinar etiam non quam. Sed arcu non odio euismod lacinia at. Eget mi proin sed libero enim sed faucibus turpis in. Sed felis eget velit aliquet sagittis id consectetur. Eu augue ut lectus arcu. Amet mattis vulputate enim nulla.", rating: 5, date: Date()))
    }
}
