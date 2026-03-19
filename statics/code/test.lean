variable {p q r : Prop}

example : (p ∧ q) ∧ r ↔ p ∧ (q ∧ r)
  :=Iff.intro
    (λ ⟨⟨hp, hq⟩, hr⟩ => ⟨hp, ⟨hq, hr⟩⟩)
    (λ ⟨hp, ⟨hq, hr⟩⟩ => ⟨⟨hp, hq⟩, hr⟩)

example : p ∨ (q ∧ r) ↔ (p ∨ q) ∧ (p ∨ r)
  :=Iff.intro
    (λ
      | Or.inl hp => ⟨Or.inl hp, Or.inl hp⟩
      | Or.inr ⟨hq, hr⟩ => ⟨Or.inr hq, Or.inr hr⟩)
    (λ
      | ⟨Or.inl hp, _⟩ => Or.inl hp
      | ⟨_, Or.inl hp⟩ => Or.inl hp
      | ⟨Or.inr hq, Or.inr hr⟩ => Or.inr ⟨hq, hr⟩)
