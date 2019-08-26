class Device < ApplicationRecord
  enum kind: { access: 0, camera: 1, furball: 2, discoball: 3, printers_3d: 4 }
end
