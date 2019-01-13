with_bpm 50 do
  
  p_decay = 0.05
  p_attack = 0.02
  p_sleep = 1
  
  live_loop :treble_clef do
    # From bottom to top
    # Lines: EGBDF
    # Spaces: FACE
    # fff: Play all Es, Bs and As flat
    with_synth :piano do
      notes = [[:D3, :Eb3, :G3],
               [:D3, :F3, :Ab3]]
      2.times do
        play_chord notes[0],
          decay: p_decay,
          attack: p_attack
        sleep 1
      end
      play_chord notes[0],
        decay: p_decay,
        attack: p_attack
      sleep 0.5
      play_chord notes[0],
        decay: p_decay * 1.25,
        attack: p_attack
      sleep 0.25
      play_chord notes[1],
        decay: p_decay,
        attack: p_attack
      sleep 0.25
    end
  end
  
  
  
  live_loop :bass_clef do
    # From bottom to top
    # Lines: GBDFA
    # Spaces: ACEG
    # fff: Play all Es, Bs and As flat
    with_synth :piano do
      notes = [[:ab3],
               [:f2]]
      2.times do
        play_chord notes[0],
          decay: p_decay,
          attack: p_attack
        sleep 1
      end
      play_chord notes[0],
        decay: p_decay,
        attack: p_attack
      sleep 0.5
      play_chord notes[0],
        decay: p_decay * 1.25,
        attack: p_attack
      sleep 0.25
      play_chord notes[1],
        decay: p_decay,
        attack: p_attack
      sleep 0.25
    end
  end
  
end




