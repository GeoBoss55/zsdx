local enemy = ...

-- A simple fireball thrown by another enemy

function enemy:on_appear()

  self:set_life(1)
  self:set_damage(12)
  self:create_sprite("enemies/fireball_simple")
  self:set_size(16, 16)
  self:set_origin(8, 8)
  self:set_invincible()
  self:set_obstacle_behavior("flying")
end

function enemy:on_obstacle_reached()

  self:get_map():enemy_remove(self:get_name())
end

function enemy:on_message_received(src_enemy, message)

  -- the message is the angle to take
  local angle = tonumber(message)
  local m = sol.movement.create("straight")
  m:set_speed(192)
  m:set_angle(angle)
  self:start_movement(m)
end

