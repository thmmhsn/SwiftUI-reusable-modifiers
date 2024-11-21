struct LeftAlignedView: ViewModifier{
    
    func body(content: Content) -> some View{
        HStack{
            content
            Spacer()
        }
    }
}

struct RightAlignedView: ViewModifier{
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
        }
    }
}

extension View{
    func leftAlign() -> some View{
        modifier(LeftAlignedView())
    }
    func rightAlign() -> some View{
        modifier(RightAlignedView())
    }
}
