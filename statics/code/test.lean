variable
(α : Type)
(p q : α → Prop)
(r : Prop)

example : (∃ x, p x ∨ q x) ↔ (∃ x, p x) ∨ (∃ x, q x)
  :=Iff.intro
    (λ (h : ∃ x, p x ∨ q x) ↦ match h with
    | ⟨x, Or.inl hp⟩ => Or.inl ⟨x, hp⟩
    | ⟨x, Or.inr hq⟩ => Or.inr ⟨x, hq⟩)
    (λ (h : (∃ x, p x) ∨ (∃ x, q x)) ↦ match h with
    | Or.inl ⟨x, hp⟩ => ⟨x, Or.inl hp⟩
    | Or.inr ⟨x, hq⟩ => ⟨x, Or.inr hq⟩)
