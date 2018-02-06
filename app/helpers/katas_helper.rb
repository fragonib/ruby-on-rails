module KatasHelper

  def show_kata_link(text, id)
    return link_to(text, kata_path(id))
  end

  def edit_kata_link(text, id)
    return link_to(text, edit_kata_path(id))
  end

  def delete_kata_link(text, id)
    return link_to(text, delete_kata_path(id), method: 'delete')
  end

end
