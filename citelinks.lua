references = {}

function Pandoc(doc)
  -- Setup references var
  local doc_tmp = doc:walk({Link = link_preprocess})
  doc_tmp = pandoc.utils.citeproc(doc_tmp)
  references = pandoc.utils.references(doc_tmp)

  doc = doc:walk({Link = link})
  doc = doc:walk({Cite = cite})
  return doc
end

function link_preprocess(el)
  -- If link points to a reference, then make it a cite
  if el.target:sub(1, 1) == "@" then
    local citation_id = el.target:sub(2)
    el = make_cite_el_from_citation_id(citation_id)
  end
  return el
end

function link(el)
  -- If link target starts by '@', then use references
  if el.target:sub(1, 1) == "@" then
    local citation_id = el.target:sub(2)
    local citation_ref = get_citation_ref_from_id(citation_id)
    local cite_el = make_cite_el_from_citation_id(citation_id)
    local link_el = make_link_from_citation_reference(el.content, citation_ref)
    el = pandoc.Inlines({link_el, hide_el(cite_el)})
  end
  return el
end

function cite(el)
  -- Transform all cites into links
  local citation_id = el.citations[1].id
  local citation_ref = get_citation_ref_from_id(citation_id)
  local link_el = make_link_from_citation_reference(el, citation_ref)
  el = pandoc.Inlines({link_el, hide_el(el)})
  return el
end

function make_cite_el_from_citation_id(citation_id, title)
  local citation_el = pandoc.Citation(citation_id, "NormalCitation")
  return pandoc.Cite(citation_id, {citation_el})
end

function make_link_from_citation_reference(title, reference)
  local link = pandoc.Link(title, reference.url)
  link.attr.attributes["role"] = "doc-biblioref"
  local span = pandoc.Span(link, {class = "citation"})
  span.attr.attributes.cites = reference.id
  return span
end

function get_citation_ref_from_id(citation_id)
  if citation_id:sub(1, 1) == "@" then
    citation_id = citation_id:sub(2)
  end

  for i, ref in ipairs(references) do
    if ref.id == citation_id then
      return ref
    end
  end
end

function hide_el(el)
  el = pandoc.Span(el, {class = "hidden"})
  return el
end
