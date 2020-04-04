knowledge_areas = KnowledgeArea.create([
    { name: 'Quantitativo' }, { name: 'Básico' },
    { name: 'Complementar' }, { name: 'Técnico' }])

functional_areas = FunctionalArea.create([
    { name: 'Quantitativo' }, { name: 'Básico' },
    { name: 'Complementar' }, { name: 'Técnico' }])

blox_profiles = BloxProfile.create([
    { name: 'Quantitativo' }, { name: 'Básico' },
    { name: 'Complementar' }, { name: 'Técnico' }])


cycles = Cycle.create([{ name: '1. Ciclo' }, { name: '2. Ciclo' }])
shifts = Shift.create([{ name: 'Matutino' }, { name: 'Noturno' }])


10.times do |i|
    Blox.create(
        title: "blox #{i+1}",
        blox_profile:BloxProfile.find(BloxProfile.pluck(:id).sample),
        cycle:Cycle.find(Cycle.pluck(:id).sample),
        functional_area:FunctionalArea.find(FunctionalArea.pluck(:id).sample),
        knowledge_area:KnowledgeArea.find(KnowledgeArea.pluck(:id).sample),
        shift:Shift.find(Shift.pluck(:id).sample)
    )
end
