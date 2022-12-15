defmodule StackWeb.LessonController do
    use StackWeb, :controller
    
    def form(conn, _params) do
        render(conn, "form.html")
    end
end