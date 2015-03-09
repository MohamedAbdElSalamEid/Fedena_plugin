authorization do
  role :admin do
    has_permission_on [:hello],
      :to => [
      :index,
      :create,
      #:student_create,
    ]
  end
end
