if not command -q helix
    and not command -q hx
    return
end

if not command -q hx
    abbr hx helix
end

if not command -q helix
    abbr helix hx
end

