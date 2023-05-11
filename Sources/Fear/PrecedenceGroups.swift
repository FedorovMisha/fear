precedencegroup ForwardApplication {
  associativity: left
}

precedencegroup ForwardComposition {
  associativity: left
  higherThan: EffectfulComposition
}

precedencegroup EffectfulComposition {
  associativity: left
  higherThan: ForwardApplication
}

precedencegroup SingleTypeComposition {
  associativity: left
  higherThan: ForwardApplication
}
