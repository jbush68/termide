{ pkgs, ... }:

with services.kmscon; {
  enable = true;
  hwRender = true;
  useXkbConfig = true;
  fonts = [ { name = "DepartureMono"; package = pkgs.departure-mono; } ];

  # Custom color config... help me... help me
  extraOptions = 
    ''
      palette custom
      palette-black=29, 32, 33
      palette-red=204, 36, 29
      palette-green=152, 151, 26
      palette-yellow=215, 153, 33
      palette-blue=69, 133, 136
      palette-magenta=177, 98, 134
      palette-cyan=104, 157, 106
      palette-light-grey=146, 131, 116
      palette-dark-grey=102, 92, 84
      palette-light-red=251, 73, 52
      palette-light-green=184, 187, 38
      palette-light-yellow=250, 189, 47
      palette-light-blue=131, 165, 152
      palette-light-magenta=211, 134, 155
      palette-light-cyan=142, 192, 124
      palette-white=251, 241, 199
      palette-foreground=235, 219, 178
      palette-background=40, 40, 40
      font-size=14
    '';

}
