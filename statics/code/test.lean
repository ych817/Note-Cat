variable {p q r : Prop}

example : p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r)
  :=Iff.intro
    (λ
      | ⟨hp, Or.inl hq⟩ => Or.inl ⟨hp, hq⟩
      | ⟨hp, Or.inr hr⟩ => Or.inr ⟨hp, hr⟩)
    (λ
      | Or.inl ⟨hp, hq⟩ => ⟨hp, Or.inl hq⟩
      | Or.inr ⟨hp, hr⟩ => ⟨hp, Or.inr hr⟩)
