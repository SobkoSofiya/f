//
//  ContentView.swift
//  PriseFix
//
//  Created by Sofi on 09.02.2021.
//

import SwiftUI


struct Bottommenu:View {
    @State  var item = 1
    var body: some View{
        TabView(selection: $item){
            gl().tabItem { VStack{
                Image("home")
                Text("Главная").font(.custom("", size: 12))
            } }.tag(1)
            ct().tabItem { VStack{
                Image("menu")
                Text("Каталог").font(.custom("", size: 12))
            } }.tag(2)
            ma().tabItem { VStack{
                Image("pin")
                Text("Магазины").font(.custom("", size: 12))
            } }.tag(3)
            ContentView().tabItem { VStack{
                Image("pro")
                Text("Профиль").font(.custom("", size: 12))
            } }.tag(4)
        }
    }
}

struct ContentView: View {
    @State var nam = ""
    @State var pass = ""
    var body: some View {
        ZStack{
            VStack(spacing:0){
                ZStack(alignment:.bottom){
                    Color("gren")
                    HStack{
                        Image("arr").resizable().frame(width: 20, height: 20, alignment: .center).padding()
                        Spacer()
                    }
                    Text("Вход в личный кабинет").font(.custom("", size: 18)).foregroundColor(.white).padding()
                    
                }.frame(width: UIScreen.main.bounds.width, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                VStack(spacing:50){
                VStack(spacing:18){
                    TextField("Номер телефона", text: $nam).frame(width:  UIScreen.main.bounds.width-30, height: 1, alignment: .center)
                    Rectangle().frame(width:  UIScreen.main.bounds.width-30, height: 1, alignment: .center).foregroundColor(.gray).opacity(0.2)
                }
                    VStack(spacing:18){
                        HStack(spacing:0){
                        TextField("Пароль", text: $pass).frame(width:  UIScreen.main.bounds.width-50, height: 1, alignment: .center)
                            Image("eye").resizable().frame(width: 20, height: 20, alignment: .center)
                        }
                        Rectangle().frame(width:  UIScreen.main.bounds.width-30, height: 1, alignment: .center).foregroundColor(.gray).opacity(0.2).offset( y: -5)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 16).frame(width: 340, height: 75, alignment: .center).foregroundColor(Color("gren"))
                        Text("Войти").foregroundColor(.white).font(.custom("", size: 20))
                    }
                    Text("Забыли пароль?").foregroundColor(Color("bu")).font(.custom("", size: 17)).offset( y: -20)
                }.offset( y: 40)
                
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct gl:View {
    var body: some View{
        ZStack{
        Text("")
        }
    }
}
struct ct:View {
    var body: some View{
        ZStack{
        Text("")
        }
    }
}
struct ma:View {
    var body: some View{
        ZStack{
        Text("")
        }
    }
}
