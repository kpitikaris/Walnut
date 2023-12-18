#pragma once

namespace Walnut
{
	struct DockLayout;
}

namespace Walnut {

	class Layer
	{
	public:
		virtual ~Layer() = default;

		virtual void OnAttach() {}
		virtual void OnDetach() {}
		virtual void OnUpdate(float ts) {}

		virtual void OnUIBuildDockSpace(const DockLayout& layout) { }
		virtual void OnUIRender() { }
	};

}
