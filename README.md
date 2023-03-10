

## ๐ View
### `Text`
Text("Hello")๋ฅผ ํตํด Text๋ฅผ ์์ฑํ  ์ ์์ผ๋ฉฐ, ํฐํธ, ์์, ๊ทธ๋ฆผ์, ์ผ์ชฝ ์๋จ๊ณผ ์ค๋ฅธ์ชฝ ์ฌ์ด์ ๊ฐ๊ฒฉ ๋ฑ๊ณผ ๊ฐ์ ์ฌ๋ฌ ์์ฑ์ ํ์คํธ์ ์ถ๊ฐํ  ์๋ ์์ต๋๋ค.

```swift
Text("Hello World")
    .foregroundColor(.orange)
    .bold()
    .font(.system(.largeTitle))
    .fontWeight(.medium)
    .italic()
    .shadow(color: .black, radius: 1, x: 0, y: 2)
```

<br>

### `TextField`
์ฃผ๋ก ํ์คํธ ์๋ ฅ์ ๋ฐ์์ค๊ธฐ ์ํ ์ปดํฌ๋ํธ์ด๋ค. **TextField**์ ์ธ์ ๊ฐ์ผ๋ก **@State**์ผ๋ก ์ ์ธํ ๋ณ์๋ฅผ ๋ฃ์ผ๋ฉด ๋ณ์์ ํ์คํธ๊ฐ ์๋ ฅ๋๋ค.

```swift
@State var userID: String = ""
  
  var body: some View {
    VStack {
      TextField("ID๋ฅผ ์๋ ฅํ์ธ์", text: $userID)
        .padding()
        .textFieldStyle(.roundedBorder)
      
      Text("Hi \(userID)")
    }
  }
```

<br>

### `SecureField`
**TextField**์ ๋ง์ฐฌ๊ฐ์ง๋ก ์๋ ฅ์ ๋ฐ์ง๋ง, ์๋ ฅํ ๋ด์ฉ์ ๋ณด์ฌ์ฃผ์ง ์๋๋ค. ์ผ๋ฐ์ ์ผ๋ก ์ฌ์ฉ์์ ์ํธ ์๋ ฅ์ผ๋ก ์ฌ์ฉ๋๋ค.


<br>
<br>
<br>


## ๐ Image

### `Image`
์ด๋ฏธ์ง๋ฅผ ํ์ํด์ฃผ๋ฉฐ, Image("์ด๋ฏธ์ง์ด๋ฆ")์ ํตํด ํ๋ฉด์ ๋์ธ ์ ์๋ค.

๋ค์์ ์์ฃผ ์ฌ์ฉํ๋ SF Symbols ์์ด์ฝ์ ์ฌ์ฉํ๊ธฐ ์ํ ์ฝ๋์ด๋ค.

```swift
Image(systemName: "folder.fill")
    .resizable()
    .frame(width: 100,
           height: 100)
```

<br>

### `WebImage`
์น ์ด๋ฏธ์ง๋ฅผ ๋ค์ด๋ก๋ํ๋ ๋ฐ ์ฌ์ฉ๋๋ฉฐ URLSession์ ์ฌ์ฉํ์ฌ ์๋ณธ ์ด๋ฏธ์ง๋ฅผ ๋ค์ด๋ก๋ํ๋ค.

ํธ๋ฆฌํ ๋ฐฉ๋ฒ์ผ๋ก๋ ๋ค์๊ณผ ๊ฐ์ด Kingfisher ๋ผ์ด๋ธ๋ฌ๋ฆฌ๋ฅผ ์ฌ์ฉํ  ์๋ ์๋ค.

```swift
import Kingfisher

let url = URL(string: "https://example.com/image.png")
imageView.kf.setImage(with: url)
```

<br>
<br>
<br>

## ๐ Button
### `Button`
ํด๋ฆญ ์ด๋ฒคํธ์ ์๋ตํ๋ ๋ฐ ์ฌ์ฉ๋๋ฉฐ ์ฌ์ฉ์๋ `action`๊ณผ `label`์ ์ ๊ณตํ์ฌ ๋ฒํผ์ ์์ฑํ๋ค.

```swift
Button(action: {
            print("Button is Clicked")
        }, label: {
            Text("Click Me!")
        })
```

<br>

### `NavigationLink`
์์ธ ํ์ด์ง๋ก ์ด๋ํ๊ธฐ ์ํ ์ปดํฌ๋ํธ์ด๋ค. ์์ฉํ์๋ฉด `destination`์ ์๋ก ์์ฑํ ๋ทฐ๋ฅผ ์ฐ๊ฒฐ์ํฌ ์๋ ์๋ค.

```swift

var body: some View {
        NavigationView {
            NavigationLink(destination: Text("์์ธ ํ์ด์ง์๋๋ค.")){
                Text("I'm Navigation")
            }
        }
    }
```

<br>
<br>
<br>




## Single Source of Truth
**SwiftUI**์์๋ ์ ์ ์ฌ์ฉํ๋ ๋ฐฉ์์ธ **Duplicated Source of Truth**์ด ์๋
์ํ๋ฅผ ์ฝ๊ฒ ๊ด๋ฆฌํ๊ฒ๋ ํด์ฃผ๋ **Single Source of Truth** ๋ฅผ ๋ํ๋ด์ค๋ค.

์ด๋ **@State** ๋ฅผ ์ฌ์ฉํ์ฌ ๋ํ๋ผ ์ ์์ผ๋ฉฐ, **@Binding** ์ ํตํด 
**Single Sourth of Truth**์ ์ ๊ทผํ  ์ ์๋ค.

๋ง์ฝ ์ํ๊ฐ ์๋ฐ์ดํธ ๋๋ฉด, **๋ทฐ ๋ํ ์๋์ผ๋ก ์๋ฐ์ดํธ** ๋๋ค.

![](https://velog.velcdn.com/images/leejaeyoung/post/334eab0e-2e87-40e8-9d32-608b6511009f/image.png)

<br>
<br>
<br>
<br>
<br>

_์ ์ ์ฌ์ฉํ๋ ๋ฐฉ์๊ณผ ๋น๊ต (๋ฐ์ดํฐ์ **๋จ๋ฐฉํฅ ํ๋ฆ**์ ํ์ธํด ๋ณผ ์ ์์)_
![](https://velog.velcdn.com/images/leejaeyoung/post/aa3d86e3-17ef-497f-9e76-497b6516b374/image.png)

<br>
<br>

### ์ฝ๋
๋ค์์ ๊ฐ๋จํ ์ธํฐํ์ด์ค๋ฅผ ๊ตฌ์ฑํ ์ฝ๋๋ก, ๊ธฐ๋ณธ์ ์ธ Data Flow๋ฅผ ์ดํดํด๋ณผ ์ ์๋ ์์ ์ด๋ค.

```swift
import SwiftUI

struct PlayerView: View {
    let episode: Episode
    @State private var isPlaying: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text(episode.title)
                .font(.largeTitle)
            Text(episode.showTitle)
                .font(.title3)
                .foregroundColor(.gray)
            
            PlayButton(isPlaying: $isPlaying)
            
            PlayingStatusView(isPlaying: $isPlaying)
            
        }
    }
}

struct PlayButton: View {
    
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button {
            self.isPlaying.toggle()
        } label: {
            Image(systemName: isPlaying ? "pause.circle": "play.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 80)
                .foregroundColor(.primary)
        }
    }
}

struct PlayingStatusView: View {
    
    @Binding var isPlaying: Bool
    
    var body: some View {
        
        Image(systemName: isPlaying ? "sun.max.fill" : "sun.max")
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fit)
            .frame(width: 80, height: 80)
    }
}


struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(episode: Episode.list[0])
    }
}

```

**PlayerView** ๊ตฌ์กฐ์ฒด๋ ์ํผ์๋์ ์ ๋ชฉ, ์ผ ์ ๋ชฉ, ์ฌ์ ์ํ๋ฅผ ํ์ํ๋ UI ์์๋ฅผ ๊ฐ์ง๊ณ  ์๋ค. **body **์์ฑ์์๋ VStack์ ์ฌ์ฉํ์ฌ ์ ๋ชฉ, ์ผ ์ ๋ชฉ, ์ฌ์/์ ์ง ๋ฒํผ, ์ฌ์ ์ํ ์์ด์ฝ์ ์์ง์ผ๋ก ๋ฐฐ์นํ๋ค.

**PlayButton** ๊ตฌ์กฐ์ฒด๋ ์ฌ์/์ ์ง ๋ฒํผ์๋๋ค. isPlaying ๋ณ์๋ ์ฌ์/์ ์ง ์ํ๋ฅผ ๋ํ๋ด๋ Binding ๋ณ์๋ค. ๋ฒํผ์ ํด๋ฆญํ๋ฉด **toggle()** ๋ฉ์๋๋ฅผ ์ฌ์ฉํ์ฌ **isPlaying** ๋ณ์์ ๊ฐ์ด ๋ณ๊ฒฝ๋๋ค.

**PlayingStatusView** ๊ตฌ์กฐ์ฒด๋ **์ฌ์ ์ํ๋ฅผ ํ์**ํ๋ ์์ด์ฝ์ ๊ฐ์ง๊ณ  ์์ต๋๋ค. **isPlaying** ๋ณ์๋ ์ฌ์ ์ค์ธ์ง ์ฌ๋ถ๋ฅผ ๋ํ๋ด๋ **Binding** ๋ณ์๋ค.

**PlayerView_Previews** ๊ตฌ์กฐ์ฒด๋ PlayerView๋ฅผ **๋ฏธ๋ฆฌ๋ณด๊ธฐ** ํ  ๋ ์ฌ์ฉํ๋ ๊ตฌ์กฐ์ฒด์ด๋ค.





<br>
<br>

## ์ ์ฉํ ์ฌ์ดํธ, ๋ฌธ์

- https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation
- https://github.com/Jinxiansen/SwiftUI
- https://getstream.io/blog/learn-swiftui/
- https://developer.apple.com/documentation/swiftui/building_a_document-based_app_with_swiftui

<br>

