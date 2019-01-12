use_bpm 90

live_loop :loop_break do
  with_fx :slicer, phase: 0.25, wave: 0, mix: 1 do
    sample :loop_breakbeat, beat_stretch: 2, cutoff: 80
  end
  sleep 2
end


live_loop :landing do
  bass_line = (knit :e1, 3, [:c1, :c2].choose, 1)
  with_fx :slicer, phase: [0.25, 0.5, 1].choose,invert_wave: 1, wave: 3 do
    s = synth :pretty_bell , note: bass_line.tick, sustain: 4, cutoff: 40
    control s, cutoff_slide: 4, cutoff: 150
  end
  sleep 4
end

live_loop :loop_blip do
  with_fx :reverb, room:1 do
    sleep 4
    sample :elec_blip, amp: 0.05, beat_stretch: 0.25, finish: 0.5, cutoff: 120
  end
end