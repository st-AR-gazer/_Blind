bool becomeBlind = false;

void blind() {
    if (!becomeBlind) { return; }

    int screenWidth = Draw::GetWidth();
    int screenHeight = Draw::GetHeight();
    
    nvg::BeginPath();
    nvg::FillColor(vec4(0, 0, 0, 1));
    nvg::Rect(0, 0, float(screenWidth), float(screenHeight));
    nvg::Fill();
}

void Main() {
    while (true) {
        yield();
        blind();
    }
}

void RenderMenu() {
    if (UI::MenuItem("\\$444" + Icons::Blind + "\\$z Black Screened", "Become Blind")) {
        becomeBlind = !becomeBlind;
    }
}

// Literally just made this since I was scrolling through the available icons and saw this one Icons::Blind, and 
// since it's about 4:30 in the morning I thought this would be absolutly hillarios to turn it into a plugin xdd.